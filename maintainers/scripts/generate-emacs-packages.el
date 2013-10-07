;;; This script generates the nix expressions for pkgs.emacsPackages.
;;; Please DO NOT run it in an Emacs with your own configuration -
;;; this script isn't entirely pure (it setq's package-archives).

;;; If you run it, please take not that it will first fetch all
;;; packages to /tmp/nix-emacs-packages and then run
;;; `nix-prefetch-url' to add them to the nix-store. You can safely
;;; delete /tmp/nix-emacs-packages afterwards.

(require 'package)
(require 'cl-lib)

(defconst nix-package-repositories
  '(("gnu" . "http://elpa.gnu.org/packages/")
    ("marmalade" . "http://marmalade-repo.org/packages/")
    ;; ("org" . "http://orgmode.org/elpa/")
    ))

(defvar tmpdir (or (getenv "NIX_EMACS_PACKAGE_CACHE_DIR")
                   "/tmp/nix-emacs-packages/"))

(require 'finder-inf)
(defconst nix-emacs-included-packages
  (append (mapcar 'car package--builtins)
          '(emacs))
  "Packages which are included in Emacs and shouldn't be listed
  in the deps argument.")

(defconst nix-emacs-disabled-packages '())

(defun nix-make-package-url (base-url name package-spec)
  (concat base-url
          (symbol-name name) "-" (package-version-join (package-desc-vers package-spec))
          (cl-case (package-desc-kind package-spec) (tar ".tar")  (single ".el"))))

(defun nix-normalize-package-name (package-name)
  (intern (replace-regexp-in-string
           "\\+" "-plus"
           (replace-regexp-in-string
            "\\." "_"
            (symbol-name package-name)))))

(defun nix-make-deps-string (deps available-packages)
  (concat
   "[ "
   (if deps
       (cl-reduce
        (lambda (a b)
          (concat a " " b))
        (mapcar (lambda (d)
                  (let ((in-emacs? (memq (car d) nix-emacs-included-packages)))
                    ;; We want to add packages to `deps' if it's NOT
                    ;; shipped with Emacs OR if it's in Emacs AND
                    ;; there's a (possible newer) version of the
                    ;; package available in a repository.
                    (when (or (not in-emacs?)
                              (and in-emacs? (memq (car d) available-packages)))
                      (symbol-name
                       (nix-normalize-package-name
                        (car d))))))
                deps))
     "")
   " ]"))

(defun nix-prefetch-packages (base-url filenames)
  (ignore-errors (mkdir tmpdir))
  (list tmpdir
        (mapcar (lambda (filename)
                  (let ((out (concat tmpdir filename))
                        (location (concat base-url filename)))
                    (if (file-regular-p out)
                        out
                      (when (url-copy-file location out)
                        (message "Prefetching package from %s" location)
                        filename))))
                filenames)))

(defun nix-get-sha256 (url)
  (message "Getting sha256 of %s" url)
  (let* ((output (shell-command-to-string (concat "nix-prefetch-url " url)))
         (sha256 (car (last (butlast (split-string output "\n"))))))
    ;; Make sure `sha256' is 52 chars long. If it's not, treat as
    ;; error and return nil.
    (when (= (length sha256) 52)
      sha256)))

(defun nix-archive-from-url (url)
  (rassoc url nix-package-repositories))

(defun nix-generate-package-expression (name
                                        package-spec
                                        base-url
                                        available-packages)
  (let* ((url (nix-make-package-url base-url name package-spec))
         (sha256 (nix-get-sha256 (nix-make-package-url
                                  (concat "file://" tmpdir)
                                  name package-spec)))
         (repository-name (car (nix-archive-from-url base-url))))
    (format
     "
  %s = buildEmacsPackage {
    name = \"%s-%s\";
    src = fetchurl {
      url = \"%s\";
      sha256 = \"%s\";
    };

    deps = %s;
    meta = {
      description = \"%s\";
      repository = \"%s\";
    };
  };
"
     (symbol-name (nix-normalize-package-name name))
     (symbol-name (nix-normalize-package-name name))
     (package-version-join (package-desc-vers package-spec))
     url
     sha256
     (nix-make-deps-string (package-desc-reqs package-spec)
                           available-packages)
     (replace-regexp-in-string "\"" "'" (package-desc-doc package-spec))
     repository-name)))

(defun nix-remove-duplicate-packages (package-list)
  "Removes duplicate and older packages."
  (let (lst)
    (cl-dolist (p package-list)
      (when (and (not (cl-find-if (lambda (x) (eq (car x) (car p))) lst))
                 (not (cl-find-if (lambda (x) (eq x (car p))) nix-emacs-disabled-packages))
                 (cl-every (lambda (op) (if (eq (car op) (car p))
                                            (version-list-<= (aref (cdr op) 0) (aref (cdr p) 0))
                                          t))
                           package-list))
        (setq lst (cons p lst))))
    lst))

(defun nix-generate-emacs-packages (filename)
  (setq package-archives nix-package-repositories)
  (message "Generating emacs packages to %s" filename)
  (let ((out-buffer (get-buffer-create "generated-emacs-packages.nix")))
    (with-current-buffer out-buffer
      ;; Insert preamble and nix-lambda, 
      (insert "# This file is generated by nixpkgs/maintainers/scripts/generate-emacs-packages.el.\n")
      (insert "# DO NOT EDIT THIS FILE.\n")
      (insert "{ buildEmacsPackage, fetchurl, otherPackages }:\n")
      (insert "with otherPackages; rec {")
      ;; Add all packages to a list
      (let ((packages
             (sort (nix-remove-duplicate-packages
                    (apply 'append
                           (mapcar (lambda (archive)
                                     (package--with-work-buffer
                                      (cdr archive) "archive-contents"
                                      ;; Hack: Store repo-url as the last element of each package
                                      (mapcar (lambda (p) (cons (car p) (vconcat (cdr p) (list (cdr archive)))))
                                              (cdr (read (current-buffer))))))
                                   package-archives)))
                   (lambda (a b) (string< (symbol-name (car a)) (symbol-name (car b)))))))
        (cl-dolist (p packages)
          (nix-prefetch-packages
           ;; Ugly way to get last element of a vector
           (car (last (append (cdr p) nil)))
           (list (nix-make-package-url "" (car p) (cdr p)))))
        (cl-dolist (p packages)
          (with-current-buffer out-buffer
            (insert (nix-generate-package-expression
                     (car p) (cdr p)
                     (car (last (append (cdr p) nil)))
                     (mapcar 'car packages)))))
        (insert "}")
        (let ((coding-system-for-write 'utf-8-emacs))
          (write-file filename))))))

{ fetchurl, writeScript, ruby, ncurses, sqlite, libxml2, libxslt, libffi
, zlib, libuuid, gems, jdk, python }:

let

  patchUsrBinEnv = writeScript "path-usr-bin-env" ''
    #!/bin/sh
    echo "==================="
    find "$1" -type f -name "*.rb" | xargs sed -i "s@/usr/bin/env@$(type -p env)@g"
    find "$1" -type f -name "*.mk" | xargs sed -i "s@/usr/bin/env@$(type -p env)@g"
  '';
  
in

{
  sup = { buildInputs = [ gems.ncursesw ]; };

  libv8 = { buildInputs = [ python ]; };
  
  sqlite3 = { propagatedBuildInputs = [ sqlite ]; };
  
  rails = { gemFlags = "--no-ri --no-rdoc"; };
  
  ncurses = { propagatedBuildInputs = [ ncurses ]; };

  nix = {
    postInstall = ''
      cd $out/${ruby.gemPath}/gems/nix*
      patch -Np1 -i ${./fix-gem-nix-versions.patch}
    '';
  };
  
  ncursesw = { propagatedBuildInputs = [ ncurses ]; };
  
  nokogiri = {
    buildFlags =
      [ "--with-xml2-dir=${libxml2} --with-xml2-include=${libxml2}/include/libxml2"
        "--with-xslt-dir=${libxslt}"
      ];
  };

  ffi = {
    postUnpack = "onetuh";
    buildFlags = ["--with-ffi-dir=${libffi}"];
    NIX_POST_EXTRACT_FILES_HOOK = patchUsrBinEnv;
  };

  xrefresh_server =
    let
      patch = fetchurl {
        url = "http://mawercer.de/~nix/xrefresh.diff.gz";
        sha256 = "1f7bnmn1pgkmkml0ms15m5lx880hq2sxy7vsddb3sbzm7n1yyicq";
      };
    in {
      propagatedBuildInputs = [ gems.rb_inotify ];

      # monitor implementation for Linux
      postInstall = ''
        cd $out/${ruby.gemPath}/gems/*
        zcat ${patch} | patch -p 1
      ''; # */
    };

  xapian_full = {
    buildInputs = [ gems.rake zlib libuuid ];
    gemFlags = "--no-rdoc --no-ri";
  };

  rjb = {
    buildInputs = [ jdk ];
    JAVA_HOME = jdk;
  };

  buildr = {
    # Many Buildfiles rely on RUBYLIB containing the current directory
    # (as was the default in Ruby < 1.9.2).
    extraWrapperFlags = "--prefix RUBYLIB : .";
  };
  
}

{ pkgs, stdenv }:
rec {
  inherit (pkgs) eggDerivation fetchegg;

  two-d-primitives = eggDerivation {
    name = "2d-primitives-v0.2.3.2";

    src = fetchegg {
      name = "2d-primitives";
      version = "v0.2.3.2";
      sha256 = "0cwp97w3h9pss61vj2wj7cchiwrjqv020l5y6dh9k05jxafp5bxy";
    };

    buildInputs = [
      
    ];
  };

  three-viewer = eggDerivation {
    name = "3viewer-0.2";

    src = fetchegg {
      name = "3viewer";
      version = "0.2";
      sha256 = "0yj8f08zmgf1sk432zw3ly4dzyiyvalivmi23drbzg2xfl9n574l";
    };

    buildInputs = [
      defstruct
      matchable
      miscmacros
      opengl
      glut
    ];
  };

  nine-ML-toolkit = eggDerivation {
    name = "9ML-toolkit-2.15";

    src = fetchegg {
      name = "9ML-toolkit";
      version = "2.15";
      sha256 = "1z795f9w44drk9v3zx7m3zfaqkkmpxlkh6x67kqf16hhwgiysy35";
    };

    buildInputs = [
      make
      matchable
      datatype
      static-modules
      miniML
      getopt-long
      uri-generic
      ssax
      sxml-transforms
      sxpath
      object-graph
      format-graph
      silex
      lalr
      mathh
      signal-diagram
      ersatz
      random-mtzig
    ];
  };

  nine-p = eggDerivation {
    name = "9p-0.9";

    src = fetchegg {
      name = "9p";
      version = "0.9";
      sha256 = "0krp3hq5vknd0l56fnyxkplncyhqknvy9357c7h2m48jmwvnmv9m";
    };

    buildInputs = [
      iset
    ];
  };

  AD = eggDerivation {
    name = "AD-1.5";

    src = fetchegg {
      name = "AD";
      version = "1.5";
      sha256 = "0dy5scd7xd20hbf90dwydg95cr34rgrys0i7kkn01hzn8wlwdbd5";
    };

    buildInputs = [
      setup-helper
      define-structure
      traversal
    ];
  };

  F-operator = eggDerivation {
    name = "F-operator-2.0.4";

    src = fetchegg {
      name = "F-operator";
      version = "2.0.4";
      sha256 = "0yla71g4znrr151n24py61vlqs4v3qgs3hkjz5r27yjxl7lgn8mi";
    };

    buildInputs = [
      setup-helper
      miscmacros
      datatype
      box
    ];
  };

  R = eggDerivation {
    name = "R-0.3.9";

    src = fetchegg {
      name = "R";
      version = "0.3.9";
      sha256 = "1rdfn3jvv5i87wa2cv65zjqxjn8jp6nry9v79sjmj08i4afvw4wk";
    };

    buildInputs = [
      big-chicken
      call-with-environment-variables
      cock
      define-record-and-printer
      matchable
      moremacros
      numbers
      shell
    ];
  };

  abnf = eggDerivation {
    name = "abnf-7.0";

    src = fetchegg {
      name = "abnf";
      version = "7.0";
      sha256 = "16d736yskg9cx9zhj02a95j8zsr6x4vp723fdmkkr2alawvv4fml";
    };

    buildInputs = [
      utf8
      typeclass
      input-classes
      suffix-tree
      lexgen
    ];
  };

  accents-substitute = eggDerivation {
    name = "accents-substitute-0.6";

    src = fetchegg {
      name = "accents-substitute";
      version = "0.6";
      sha256 = "1mm937f3m1sspy0j9cx4k29b61rbsxm7xxzqd986410vkk66xvj4";
    };

    buildInputs = [
      regex
    ];
  };

  advice = eggDerivation {
    name = "advice-0.3";

    src = fetchegg {
      name = "advice";
      version = "0.3";
      sha256 = "0cqfqjs5vk84kbi81q4s9qb7fijb8ybhjgfrg1xarzq9rrnm55qs";
    };

    buildInputs = [
      
    ];
  };

  aes = eggDerivation {
    name = "aes-1.3";

    src = fetchegg {
      name = "aes";
      version = "1.3";
      sha256 = "0zhkqdms2f9if1j5v8myay2mfiislvpj3bcqawb4s4dw0qcp20kb";
    };

    buildInputs = [
      
    ];
  };

  agrep = eggDerivation {
    name = "agrep-1.4";

    src = fetchegg {
      name = "agrep";
      version = "1.4";
      sha256 = "0bx0c4vxnl43fich8q951baac5kv2igivc2vcnj3vjvamgfri5dz";
    };

    buildInputs = [
      datatype
    ];
  };

  aima = eggDerivation {
    name = "aima-0.9.12";

    src = fetchegg {
      name = "aima";
      version = "0.9.12";
      sha256 = "0hzyvl27w2pdf70x32ajfa11js6nvhfwxzw10yn4kqxvxr43brwv";
    };

    buildInputs = [
      cock
      define-record-and-printer
      foof-loop
      format
      graphviz
      heap
      list-utils
      matchable
      numbers
      R
      random-bsd
      setup-helper
      shell
      srfi-95
      stack
      vector-lib
    ];
  };

  alist-lib = eggDerivation {
    name = "alist-lib-0.2.9";

    src = fetchegg {
      name = "alist-lib";
      version = "0.2.9";
      sha256 = "0skcn8l6k1804nl81h3xd6qx1hl93p4lv5vkn96fzwkcmja2zk3a";
    };

    buildInputs = [
      cock
      matchable
      setup-helper
    ];
  };

  allegro = eggDerivation {
    name = "allegro-2.4.3";

    src = fetchegg {
      name = "allegro";
      version = "2.4.3";
      sha256 = "12ki7m1lybbqb977ypayrjarq1sfjrxqpki455cw131115j6bm4q";
    };

    buildInputs = [
      foreigners
      pkgs.pkgconfig
      pkgs.allegro5
    ];
  };

  amazon-s3 = eggDerivation {
    name = "amazon-s3-9";

    src = fetchegg {
      name = "amazon-s3";
      version = "9";
      sha256 = "0q6vb5w4v5rj8j14zprdikb5yxnmzimdrq2r76prfnk0ls9vj223";
    };

    buildInputs = [
      base64
      sha1
      http-client
      uri-common
      intarweb
      srfi-19
      hmac
      ssax
      sxpath
    ];
  };

  amb = eggDerivation {
    name = "amb-2.1.6";

    src = fetchegg {
      name = "amb";
      version = "2.1.6";
      sha256 = "1dvhnh3vsacf4ijl770pzf71hfbm052p679lxchisfnaqzbsi3hf";
    };

    buildInputs = [
      setup-helper
      miscmacros
      check-errors
      condition-utils
    ];
  };

  anaphora = eggDerivation {
    name = "anaphora-0.7";

    src = fetchegg {
      name = "anaphora";
      version = "0.7";
      sha256 = "1fy42r6d6kbwd4h4zvapg4pc2wrxa22wydjhs87kwrfbngj91rn8";
    };

    buildInputs = [
      
    ];
  };

  animation = eggDerivation {
    name = "animation-0.3.2";

    src = fetchegg {
      name = "animation";
      version = "0.3.2";
      sha256 = "0br7fapb7b620wmlna0v1b5np3afx8753krfzkj4mrzwskrkqfqa";
    };

    buildInputs = [
      cock
      format
      matchable
      miscmacros
      shell
      setup-helper
    ];
  };

  ansi-escape-sequences = eggDerivation {
    name = "ansi-escape-sequences-0.4";

    src = fetchegg {
      name = "ansi-escape-sequences";
      version = "0.4";
      sha256 = "01nhdnl3ana0fkm21ifjhar5qr4qxhyswd4zm5kw9psf2d38diry";
    };

    buildInputs = [
      
    ];
  };

  apropos = eggDerivation {
    name = "apropos-2.1.2";

    src = fetchegg {
      name = "apropos";
      version = "2.1.2";
      sha256 = "1bsbrkhy2yrjbd0mmqkvlj98xdv23syhn7yha2ylh0ndqmn60653";
    };

    buildInputs = [
      setup-helper
      miscmacros
      string-utils
      symbol-utils
      check-errors
    ];
  };

  args = eggDerivation {
    name = "args-1.4.4";

    src = fetchegg {
      name = "args";
      version = "1.4.4";
      sha256 = "1m2sz4g1g44miw8bw2gpqd7wxhq16iw5bncd4w3463rc066brq29";
    };

    buildInputs = [
      srfi-37
    ];
  };

  arrays = eggDerivation {
    name = "arrays-0.1";

    src = fetchegg {
      name = "arrays";
      version = "0.1";
      sha256 = "02021r9l6gjcsfn6qnfi8vzl3ziq1w31klzpi0zp3wxj0pmd07v1";
    };

    buildInputs = [
      
    ];
  };

  atlas-lapack = eggDerivation {
    name = "atlas-lapack-3.1";

    src = fetchegg {
      name = "atlas-lapack";
      version = "3.1";
      sha256 = "1paqqh26x91ji4xzlgfpwhgg7xdivnkxk1dkmbzivqwrirqal8r9";
    };

    buildInputs = [
      bind
      blas
    ];
  };

  atom = eggDerivation {
    name = "atom-0.1.2";

    src = fetchegg {
      name = "atom";
      version = "0.1.2";
      sha256 = "1c2fqjy44hiscj43xjvr2bl5dffvcqfclxswjx5w6mx9nnk4r66w";
    };

    buildInputs = [
      matchable
      ssax
      sxml-serializer
      regex
    ];
  };

  augeas = eggDerivation {
    name = "augeas-0.1.0";

    src = fetchegg {
      name = "augeas";
      version = "0.1.0";
      sha256 = "1qn2a4471ch6vgkjak6bxiwz346nzkhip664g4w7173fspq7f0yc";
    };

    buildInputs = [
      foreigners
    ];
  };

  autocompile = eggDerivation {
    name = "autocompile-1.0";

    src = fetchegg {
      name = "autocompile";
      version = "1.0";
      sha256 = "138zyl7icpfnw4by409vh50di02678ajyv0nqinkb6dbdj6x1g3x";
    };

    buildInputs = [
      matchable
      regex
    ];
  };

  autoform = eggDerivation {
    name = "autoform-0.2";

    src = fetchegg {
      name = "autoform";
      version = "0.2";
      sha256 = "1dngqra7c22x7m4g097r4nc419x1shc6awn2jd3x3p8xbkalsnar";
    };

    buildInputs = [
      sql-null
      html-tags
      html-utils
      spiffy-request-vars
    ];
  };

  autoform-jquery = eggDerivation {
    name = "autoform-jquery-0.1";

    src = fetchegg {
      name = "autoform-jquery";
      version = "0.1";
      sha256 = "1m1y9796v6dyi0h8crik9nvnbqaw9gpdbpf4js6rli2iaixlak51";
    };

    buildInputs = [
      autoform
    ];
  };

  autoform-postgresql = eggDerivation {
    name = "autoform-postgresql-0.2";

    src = fetchegg {
      name = "autoform-postgresql";
      version = "0.2";
      sha256 = "1xz8qafw33mckrz313c6nw8p0swp31awcb6xrplh86ism21fmkaz";
    };

    buildInputs = [
      autoform
      postgresql
    ];
  };

  autoload = eggDerivation {
    name = "autoload-2.1";

    src = fetchegg {
      name = "autoload";
      version = "2.1";
      sha256 = "0b4sa5jr7hp6lxy51xh8yr5kbkfpq6i84kpkl7qfnwnlmrcpx311";
    };

    buildInputs = [
      
    ];
  };

  awful = eggDerivation {
    name = "awful-0.41.0";

    src = fetchegg {
      name = "awful";
      version = "0.41.0";
      sha256 = "193x2cjc8za59ia5kw0fcm63ck3i6nhxgbjlaky1fy5p26k7p6is";
    };

    buildInputs = [
      spiffy
      spiffy-request-vars
      html-tags
      html-utils
      http-session
      json
      spiffy-cookies
      regex
      sxml-transforms
    ];
  };

  awful-path-matchers = eggDerivation {
    name = "awful-path-matchers-0.0.1";

    src = fetchegg {
      name = "awful-path-matchers";
      version = "0.0.1";
      sha256 = "0h0n0pkkwnvq8qp7y1vb78vhpaxj9h8b12l78xv2ay2b6mpbv33p";
    };

    buildInputs = [
      
    ];
  };

  awful-postgresql = eggDerivation {
    name = "awful-postgresql-0.6.0";

    src = fetchegg {
      name = "awful-postgresql";
      version = "0.6.0";
      sha256 = "0rrqyy30gxw0n30qdhhl0pcas3q695mfy00win4nbk3a1p0a1gy3";
    };

    buildInputs = [
      awful
      postgresql
    ];
  };

  awful-sql-de-lite = eggDerivation {
    name = "awful-sql-de-lite-0.6.0";

    src = fetchegg {
      name = "awful-sql-de-lite";
      version = "0.6.0";
      sha256 = "09fpkmn85c95ybfixk625xfg1ffm6jxpj29xi836yqpvkis3xryj";
    };

    buildInputs = [
      awful
      sql-de-lite
    ];
  };

  awful-sqlite3 = eggDerivation {
    name = "awful-sqlite3-0.6.0";

    src = fetchegg {
      name = "awful-sqlite3";
      version = "0.6.0";
      sha256 = "0jpypzyj7ah06kgz77ilh2p3h0djm2zz2fgwlc0wll5vd2f9b5s1";
    };

    buildInputs = [
      awful
      sqlite3
    ];
  };

  awful-sse = eggDerivation {
    name = "awful-sse-0.2";

    src = fetchegg {
      name = "awful-sse";
      version = "0.2";
      sha256 = "1b7bg9x9kkdarg1rcw5lh5y0pkbfhfhl5g17bvznyr9m9pgwjp2z";
    };

    buildInputs = [
      awful
      spiffy
      intarweb
    ];
  };

  awful-ssl = eggDerivation {
    name = "awful-ssl-0.2";

    src = fetchegg {
      name = "awful-ssl";
      version = "0.2";
      sha256 = "17fv950wfqpdm9qwn8861q97d3nnv4xpsiqyl5ap6pswvlvk8s58";
    };

    buildInputs = [
      awful
      openssl
      spiffy
    ];
  };

  awful-ssql = eggDerivation {
    name = "awful-ssql-0.1.0";

    src = fetchegg {
      name = "awful-ssql";
      version = "0.1.0";
      sha256 = "068kf79sz16bl9yr5rc2k8lnbm3iggi1p98gn959bdiql9yz9x6s";
    };

    buildInputs = [
      ssql
      awful
    ];
  };

  awful-static-pages = eggDerivation {
    name = "awful-static-pages-0.1.1";

    src = fetchegg {
      name = "awful-static-pages";
      version = "0.1.1";
      sha256 = "025azrj9bclsyj4isyqy4wpk5d63vgcp33z7xvkl3bh73i8qlaij";
    };

    buildInputs = [
      awful
    ];
  };

  awk = eggDerivation {
    name = "awk-1.7";

    src = fetchegg {
      name = "awk";
      version = "1.7";
      sha256 = "1im6f83skj66nwj658ni4d3fl4zqpn6dvfnah1pnhlsvrv5i1r2l";
    };

    buildInputs = [
      regex
    ];
  };

  banterpixra = eggDerivation {
    name = "banterpixra-0.1";

    src = fetchegg {
      name = "banterpixra";
      version = "0.1";
      sha256 = "0kpi1wswsa7rngbhzdwk4rfrbb5p72w5ak4ynhimmfhfxs1j5y0s";
    };

    buildInputs = [
      sxpath
      matchable
    ];
  };

  base64 = eggDerivation {
    name = "base64-3.3.1";

    src = fetchegg {
      name = "base64";
      version = "3.3.1";
      sha256 = "0wmldiwwg1jpcn07wb906nc53si5j7sa83wgyq643xzqcx4v4x1d";
    };

    buildInputs = [
      
    ];
  };

  bb = eggDerivation {
    name = "bb-1.32";

    src = fetchegg {
      name = "bb";
      version = "1.32";
      sha256 = "1hlrim8r9qm5f80qx6xygxyy94zwxrs88s2q3y2hvqn6k2z1h8a2";
    };

    buildInputs = [
      silex
      easyffi
      matchable
      make
      pkgs.fltk13
      pkgs.libjpeg
      pkgs.mesa
    ];
  };

  berkeley-db = eggDerivation {
    name = "berkeley-db-2.2.3";

    src = fetchegg {
      name = "berkeley-db";
      version = "2.2.3";
      sha256 = "16xl8l9ph6szhrr5215pzwd23mgvpwixv92diwf9s1g37069i5y6";
    };

    buildInputs = [
      pkgs.db
    ];
  };

  big-chicken = eggDerivation {
    name = "big-chicken-0.4";

    src = fetchegg {
      name = "big-chicken";
      version = "0.4";
      sha256 = "10mgqj7xikjbb1w08q2wrhlf24dp5mj5mj50b5l458n22yy6jsky";
    };

    buildInputs = [
      regex
    ];
  };

  binary-heap = eggDerivation {
    name = "binary-heap-1.2";

    src = fetchegg {
      name = "binary-heap";
      version = "1.2";
      sha256 = "0ccn8p005zn0m9mcd7brhg7y0n6918cl3hilzci8bnb0np5b1f3z";
    };

    buildInputs = [
      datatype
      matchable
    ];
  };

  binary-parse = eggDerivation {
    name = "binary-parse-1.3";

    src = fetchegg {
      name = "binary-parse";
      version = "1.3";
      sha256 = "1pvv4mabxd1vmbly1kfs3dbxq77yvf62kyxk2hkcm69q6cwlqv15";
    };

    buildInputs = [
      
    ];
  };

  bind = eggDerivation {
    name = "bind-1.5.2";

    src = fetchegg {
      name = "bind";
      version = "1.5.2";
      sha256 = "1x768k7dlfmkvgaf2idiaaqqgnqdnif5yb7ib6a6zndacbwz9jps";
    };

    buildInputs = [
      silex
      matchable
      coops
      regex
      make
    ];
  };

  bindings = eggDerivation {
    name = "bindings-3.3.1";

    src = fetchegg {
      name = "bindings";
      version = "3.3.1";
      sha256 = "1ls3d4n36906pwf021yc5i00ddq8cfg4kq72yrndnpmmn7fks10p";
    };

    buildInputs = [
      
    ];
  };

  bitcoin = eggDerivation {
    name = "bitcoin-0.0.2";

    src = fetchegg {
      name = "bitcoin";
      version = "0.0.2";
      sha256 = "0ihbkb1lhbiy9xzxhjgk7aghqan40xl6g65n09c9spapqv44xzbn";
    };

    buildInputs = [
      medea
      uri-common
      http-client
    ];
  };

  bitstring = eggDerivation {
    name = "bitstring-1.33";

    src = fetchegg {
      name = "bitstring";
      version = "1.33";
      sha256 = "01banixsw9c9qz66m59hvbk11qjdn4djf00qgffvkq1jm9xm6625";
    };

    buildInputs = [
      
    ];
  };

  blas = eggDerivation {
    name = "blas-4.1";

    src = fetchegg {
      name = "blas";
      version = "4.1";
      sha256 = "1djjhrrhrjrrai6af1sb346z0ddjypy6fyscd2jsf3qrp6npb2bq";
    };

    buildInputs = [
      bind
      pkgs.pkgconfig
      pkgs.blas
    ];
  };

  blob-record = eggDerivation {
    name = "blob-record-1.2";

    src = fetchegg {
      name = "blob-record";
      version = "1.2";
      sha256 = "1v91fh2a5zq7qsajg7pmwf1fwic4z2dr46j3lp2ab3ipkbmxvdi8";
    };

    buildInputs = [
      byte-blob
    ];
  };

  blob-utils = eggDerivation {
    name = "blob-utils-1.0.3";

    src = fetchegg {
      name = "blob-utils";
      version = "1.0.3";
      sha256 = "17vdn02fnxnjx5ixgqimln93lqvzyq4y9w02fw7xnbdcjzqm0xml";
    };

    buildInputs = [
      setup-helper
      string-utils
    ];
  };

  bloom-filter = eggDerivation {
    name = "bloom-filter-1.1.6";

    src = fetchegg {
      name = "bloom-filter";
      version = "1.1.6";
      sha256 = "1wxadba767isii89zsd29g79mp61mh4w12mfqmaykb88lbflxdbw";
    };

    buildInputs = [
      setup-helper
      iset
      message-digest
      hashes
      check-errors
      record-variants
    ];
  };

  blowfish = eggDerivation {
    name = "blowfish-1.1";

    src = fetchegg {
      name = "blowfish";
      version = "1.1";
      sha256 = "1srbdrx4xdmfgyp1gz2maky8n7nwm9ncsnvsi8s4j6dps8fpj1zs";
    };

    buildInputs = [
      
    ];
  };

  box = eggDerivation {
    name = "box-2.3.2";

    src = fetchegg {
      name = "box";
      version = "2.3.2";
      sha256 = "07pc87jy9j2lfzxbh8ssj7a5yh053cvbw39q1yhaipmb73wib73p";
    };

    buildInputs = [
      setup-helper
      check-errors
    ];
  };

  breadcrumbs = eggDerivation {
    name = "breadcrumbs-0.1";

    src = fetchegg {
      name = "breadcrumbs";
      version = "0.1";
      sha256 = "1a9lfln9ph0swjghq32pg7jf55m6apg3gaglk8k1ckjc3hdfkv2k";
    };

    buildInputs = [
      
    ];
  };

  buffer-ports = eggDerivation {
    name = "buffer-ports-0.6";

    src = fetchegg {
      name = "buffer-ports";
      version = "0.6";
      sha256 = "07p10sm6kj51f8j3p02m6zmf29idskpacafq4z1h9zip554k6hls";
    };

    buildInputs = [
      
    ];
  };

  bvsp-spline = eggDerivation {
    name = "bvsp-spline-1.3";

    src = fetchegg {
      name = "bvsp-spline";
      version = "1.3";
      sha256 = "0c12amisvl8dggg8bpcrs90w0vm1j9sc137fn2hgr26l21nh626x";
    };

    buildInputs = [
      pkgs.libf2c
    ];
  };

  byte-blob = eggDerivation {
    name = "byte-blob-1.16";

    src = fetchegg {
      name = "byte-blob";
      version = "1.16";
      sha256 = "0gfxmzyk80x66wn38xl53w0pglqib3vws4y2ax4pjggg9qa9cvyw";
    };

    buildInputs = [
      
    ];
  };

  byte-blob-stream = eggDerivation {
    name = "byte-blob-stream-1.5";

    src = fetchegg {
      name = "byte-blob-stream";
      version = "1.5";
      sha256 = "1fdh60bkvdw4p70l39krzh5w5a1m70hmh430mi4chc8rkbflijp7";
    };

    buildInputs = [
      srfi-41
      byte-blob
    ];
  };

  c3 = eggDerivation {
    name = "c3-1.5";

    src = fetchegg {
      name = "c3";
      version = "1.5";
      sha256 = "02vg8ah31fb92q29l1ks2x5iysx5mwwbzk25rmnyjghw8vy14a64";
    };

    buildInputs = [
      tinyclos
    ];
  };

  cairo = eggDerivation {
    name = "cairo-0.1.16";

    src = fetchegg {
      name = "cairo";
      version = "0.1.16";
      sha256 = "0f0dghlm0iad8ri9sbp0fdd9g1yy1ywikcj8wc6xqqf7hhjnnvhm";
    };

    buildInputs = [
      pkgs.pkgconfig
      pkgs.cairo
    ];
  };

  call-with-environment-variables = eggDerivation {
    name = "call-with-environment-variables-0.1.5";

    src = fetchegg {
      name = "call-with-environment-variables";
      version = "0.1.5";
      sha256 = "0j76yp2l14hp7rn8siwrhhjgqfz2272sj42skxnxhn5lvvdhq40m";
    };

    buildInputs = [
      cock
      setup-helper
    ];
  };

  call-with-query = eggDerivation {
    name = "call-with-query-0.2.8";

    src = fetchegg {
      name = "call-with-query";
      version = "0.2.8";
      sha256 = "1hlllmv8fw4p28gs2bqb8n3x298b50vhc8zaacbgz7srnim5f7id";
    };

    buildInputs = [
      alist-lib
      args
      call-with-environment-variables
      cock
      define-record-and-printer
      fastcgi
      format
      matchable
      regex
      setup-helper
      uri-common
    ];
  };

  call-with-sqlite3-connection = eggDerivation {
    name = "call-with-sqlite3-connection-0.1.2";

    src = fetchegg {
      name = "call-with-sqlite3-connection";
      version = "0.1.2";
      sha256 = "1cc9yyiz6v61cfwcykwfbns87d4gd3mhbpr43bh6cr0ixsrj8rmr";
    };

    buildInputs = [
      setup-helper
      sqlite3
    ];
  };

  callable-data-structures = eggDerivation {
    name = "callable-data-structures-1.0.1";

    src = fetchegg {
      name = "callable-data-structures";
      version = "1.0.1";
      sha256 = "0nqp6pk1gs2603nqms5624xax2i5iy657ic5r7d6w637fqm8izir";
    };

    buildInputs = [
      
    ];
  };

  canvas-draw = eggDerivation {
    name = "canvas-draw-1.1.1";

    src = fetchegg {
      name = "canvas-draw";
      version = "1.1.1";
      sha256 = "1k5nmv9gxfhm9bjbf9linbrb482wz9s1qr70g3dw21cymizqs0z8";
    };

    buildInputs = [
      
    ];
  };

  cells = eggDerivation {
    name = "cells-1.2";

    src = fetchegg {
      name = "cells";
      version = "1.2";
      sha256 = "0x59ggx3rylqvjd7b8hcajfrdyrr4ag29b93yz6cc63iwyis7q3f";
    };

    buildInputs = [
      
    ];
  };

  cgi = eggDerivation {
    name = "cgi-1.1";

    src = fetchegg {
      name = "cgi";
      version = "1.1";
      sha256 = "1k4nds30s73l6gkj29src2kcfdfkfsyw48jqf2g9m42qw3c5jcnm";
    };

    buildInputs = [
      typeclass
      input-classes
      abnf
      datatype
      byte-blob
      utf8
      matchable
    ];
  };

  channel = eggDerivation {
    name = "channel-0.0.3";

    src = fetchegg {
      name = "channel";
      version = "0.0.3";
      sha256 = "1z69wjaa94fmd31mghil5l79k6n8l0bi0nzwcavhac6d9lqa3mz5";
    };

    buildInputs = [
      miscmacros
    ];
  };

  char-set-literals = eggDerivation {
    name = "char-set-literals-0.2";

    src = fetchegg {
      name = "char-set-literals";
      version = "0.2";
      sha256 = "0dyhiwal4dq3y5w9m3770gn0zxz8zi7h1i4canh6nhdlhgdm5j1k";
    };

    buildInputs = [
      
    ];
  };

  charconv = eggDerivation {
    name = "charconv-1.3.5";

    src = fetchegg {
      name = "charconv";
      version = "1.3.5";
      sha256 = "0zqydjafx27zvd4a3ylbd8hdim9hhf6q2bj6yagplxw2h4xb2ms4";
    };

    buildInputs = [
      iconv
      regex
    ];
  };

  charplot = eggDerivation {
    name = "charplot-0.5";

    src = fetchegg {
      name = "charplot";
      version = "0.5";
      sha256 = "0mhq6955qz2z5k5v1mmxixnl62kkmf959m2kf3bf4a7whr5bkiya";
    };

    buildInputs = [
      numbers
      srfi-63
    ];
  };

  check-errors = eggDerivation {
    name = "check-errors-1.13.0";

    src = fetchegg {
      name = "check-errors";
      version = "1.13.0";
      sha256 = "12a0sn82n98jybh72zb39fdddmr5k4785xglxb16750fhy8rmjwi";
    };

    buildInputs = [
      setup-helper
    ];
  };

  chickadee = eggDerivation {
    name = "chickadee-0.10.2";

    src = fetchegg {
      name = "chickadee";
      version = "0.10.2";
      sha256 = "1h79hjz78vp4i2rqd4zj5j53gxf28h58s1cwd6dkn20i4fbhpjkv";
    };

    buildInputs = [
      matchable
      uri-common
      intarweb
      spiffy
      spiffy-request-vars
      chicken-doc
      sxml-transforms
      uri-generic
      chicken-doc-admin
      chicken-doc-html
    ];
  };

  chicken-belt = eggDerivation {
    name = "chicken-belt-0.0.9";

    src = fetchegg {
      name = "chicken-belt";
      version = "0.0.9";
      sha256 = "1j8a1ipa1wp407681nmsgc32qg87hjblic9pkkc6n507yzmv39f0";
    };

    buildInputs = [
      matchable
    ];
  };

  chicken-doc = eggDerivation {
    name = "chicken-doc-0.4.6";

    src = fetchegg {
      name = "chicken-doc";
      version = "0.4.6";
      sha256 = "14dgnkdinfwlzlnjwif0bjll39v4q1504rkh8ab8m72njf77bh8i";
    };

    buildInputs = [
      matchable
      regex
      fmt
      sxml-transforms
    ];
  };

  chicken-doc-admin = eggDerivation {
    name = "chicken-doc-admin-0.4.6";

    src = fetchegg {
      name = "chicken-doc-admin";
      version = "0.4.6";
      sha256 = "0rxqb77402k887gjqiyxhq31kpzzmqaj5jj8wksgv7nh4rdsn774";
    };

    buildInputs = [
      matchable
      chicken-doc
      html-parser
      sxml-transforms
      svnwiki-sxml
    ];
  };

  chicken-doc-html = eggDerivation {
    name = "chicken-doc-html-0.2.7";

    src = fetchegg {
      name = "chicken-doc-html";
      version = "0.2.7";
      sha256 = "1h5aq9ywmljgsvl2hwzy9lywaav7azrq37sl44b0xf6rl99v2iks";
    };

    buildInputs = [
      regex
      matchable
      sxml-transforms
      colorize
      svnwiki-sxml
    ];
  };

  chickumber = eggDerivation {
    name = "chickumber-0.13";

    src = fetchegg {
      name = "chickumber";
      version = "0.13";
      sha256 = "02gy7zxczcqzs3dw1qm31nq66jkqjxh169xq9mzgx98yy1pjdr2j";
    };

    buildInputs = [
      defstruct
      regex-literals
      test
      json
      missbehave
    ];
  };

  chunk-vector = eggDerivation {
    name = "chunk-vector-v0.1.1";

    src = fetchegg {
      name = "chunk-vector";
      version = "v0.1.1";
      sha256 = "1c180hr29qmpp14zm88gpb16qiq6nhcma34xk5958akqc67crkcl";
    };

    buildInputs = [
      
    ];
  };

  cis = eggDerivation {
    name = "cis-1.2";

    src = fetchegg {
      name = "cis";
      version = "1.2";
      sha256 = "093zjzs12ji3nbfz79vjg90bbjq802qx3pq6ikxknga1smnfgfs0";
    };

    buildInputs = [
      
    ];
  };

  civet = eggDerivation {
    name = "civet-0.3.6";

    src = fetchegg {
      name = "civet";
      version = "0.3.6";
      sha256 = "1hd77qvy1y0jhbg48ayl3sjjpv8b3jl0fj0pc83kg04bbsla8mdl";
    };

    buildInputs = [
      utf8
      uri-common
      ssax
      sxpath
      sxml-serializer
    ];
  };

  clojurian = eggDerivation {
    name = "clojurian-0.0.5";

    src = fetchegg {
      name = "clojurian";
      version = "0.0.5";
      sha256 = "0bc515155wwzqkdrdr2hxvkcjbds9cl5bzj6pskv9sg96bygi2rn";
    };

    buildInputs = [
      
    ];
  };

  cmaes = eggDerivation {
    name = "cmaes-1.0";

    src = fetchegg {
      name = "cmaes";
      version = "1.0";
      sha256 = "1rjm5azrwx6f4bywcx261y9w2sdcydmb30fb360i0bhj1dyqsw08";
    };

    buildInputs = [
      
    ];
  };

  cock = eggDerivation {
    name = "cock-0.9.1";

    src = fetchegg {
      name = "cock";
      version = "0.9.1";
      sha256 = "15m55aakkizdm3l5q39mkc9bbby0n7xp1019jkyj4xvshcxp5lbz";
    };

    buildInputs = [
      setup-helper
    ];
  };

  cock-utils = eggDerivation {
    name = "cock-utils-0.4.8";

    src = fetchegg {
      name = "cock-utils";
      version = "0.4.8";
      sha256 = "0yq2620x49jlq8fkkjnwsv6j7gs8bxsbd5qir7kgw1rqvzzic28a";
    };

    buildInputs = [
      alist-lib
      args
      define-record-and-printer
      environments
      fmt
      git
      matchable
      miscmacros
      shell
      srfi-95
      stack
      usage
    ];
  };

  coerce = eggDerivation {
    name = "coerce-2.0.0";

    src = fetchegg {
      name = "coerce";
      version = "2.0.0";
      sha256 = "0jg7lrr7jmjrrvajzjdcwhy161zcs3f8fc1613v478wpnh60k53k";
    };

    buildInputs = [
      setup-helper
      miscmacros
      lookup-table
      check-errors
    ];
  };

  colorize = eggDerivation {
    name = "colorize-0.4.2";

    src = fetchegg {
      name = "colorize";
      version = "0.4.2";
      sha256 = "1sr1jlmgb8djp4y57lv0rdfv0031ch9nh5z3gfy82dsb2isp2pc0";
    };

    buildInputs = [
      
    ];
  };

  combinator-birds = eggDerivation {
    name = "combinator-birds-0.3";

    src = fetchegg {
      name = "combinator-birds";
      version = "0.3";
      sha256 = "1i2j14mqf9savfgbzvca0xwxp7bj9gb1p5373h5m8y1yaf5iw7dx";
    };

    buildInputs = [
      
    ];
  };

  combinatorics = eggDerivation {
    name = "combinatorics-0.3.7";

    src = fetchegg {
      name = "combinatorics";
      version = "0.3.7";
      sha256 = "04afn11xx22q627xm64ghphvbgs0j1f2vsm93v42y63dvb0l0d70";
    };

    buildInputs = [
      cock
      setup-helper
      vector-lib
    ];
  };

  combinators = eggDerivation {
    name = "combinators-1.2.1";

    src = fetchegg {
      name = "combinators";
      version = "1.2.1";
      sha256 = "02mb2x62ml9fj1j0kxv46m813vmh8hn7z1r7ky0c219akbpg16kg";
    };

    buildInputs = [
      setup-helper
    ];
  };

  comparse = eggDerivation {
    name = "comparse-0.1.0";

    src = fetchegg {
      name = "comparse";
      version = "0.1.0";
      sha256 = "1fy0srniwa01d395pzil66mmgcnlzhmzdfcxyi0d2y9cfr301c2y";
    };

    buildInputs = [
      lazy-seq
      latch
      trie
    ];
  };

  concurrent-native-callbacks = eggDerivation {
    name = "concurrent-native-callbacks-0.8";

    src = fetchegg {
      name = "concurrent-native-callbacks";
      version = "0.8";
      sha256 = "0rqn7pi6ri7x60mll9cbwz8gpfykhv4a2lnyqvwd6kdbsp05vf07";
    };

    buildInputs = [
      typed-records
      matchable
      bind
      miscmacros
      shell
    ];
  };

  condition-utils = eggDerivation {
    name = "condition-utils-1.0.4";

    src = fetchegg {
      name = "condition-utils";
      version = "1.0.4";
      sha256 = "1gd836nw3wvh06gzsb5d3p3w9mjz1vipiyhrva3wff0qyc04whsi";
    };

    buildInputs = [
      setup-helper
      check-errors
    ];
  };

  connman = eggDerivation {
    name = "connman-0.8";

    src = fetchegg {
      name = "connman";
      version = "0.8";
      sha256 = "0h20rahb6sqn9ybr194n0gfpwaz98yhbzvlmfxa696qiwd2fj5lz";
    };

    buildInputs = [
      dbus
      ssax
      matchable
      advice
    ];
  };

  continuations = eggDerivation {
    name = "continuations-1.2.4";

    src = fetchegg {
      name = "continuations";
      version = "1.2.4";
      sha256 = "0bbjv7k4r1rgy22lwyf40qabkk91q70zphi4cwx3rj7lczzphp9r";
    };

    buildInputs = [
      
    ];
  };

  contracts = eggDerivation {
    name = "contracts-2.0.5";

    src = fetchegg {
      name = "contracts";
      version = "2.0.5";
      sha256 = "0v1xjnl5r2ij2yw82y8f27clnihzjcvr123issygrly0r0xgmmp4";
    };

    buildInputs = [
      
    ];
  };

  coops = eggDerivation {
    name = "coops-1.93";

    src = fetchegg {
      name = "coops";
      version = "1.93";
      sha256 = "0mrkk7pmn9r691svzm4113mn0xsk36zi3f15m86n29a6c7897php";
    };

    buildInputs = [
      matchable
      record-variants
    ];
  };

  coops-utils = eggDerivation {
    name = "coops-utils-1.0.0";

    src = fetchegg {
      name = "coops-utils";
      version = "1.0.0";
      sha256 = "1arql868bfa93vrf1p7h3hljfisgbxd7mbv8ww4rn7az95qqy3s8";
    };

    buildInputs = [
      setup-helper
      coops
      check-errors
    ];
  };

  coq-au-vin = eggDerivation {
    name = "coq-au-vin-0.3";

    src = fetchegg {
      name = "coq-au-vin";
      version = "0.3";
      sha256 = "1f8y2rwqs4zp2k5z9ha8jyckdj26yn12zz9lrdclfbazq812py77";
    };

    buildInputs = [
      utf8
      uri-common
      sql-de-lite
      civet
      lowdown
      crypt
      random-bsd
      matchable
      fastcgi
      intarweb
    ];
  };

  correios = eggDerivation {
    name = "correios-0.1";

    src = fetchegg {
      name = "correios";
      version = "0.1";
      sha256 = "060flcpaidfrlbbzj6z88dc24b5adq9zh5rqvbnf0qlx7ci7sgka";
    };

    buildInputs = [
      defstruct
      http-client
      uri-common
      ssax
    ];
  };

  couchdb = eggDerivation {
    name = "couchdb-0.3.5";

    src = fetchegg {
      name = "couchdb";
      version = "0.3.5";
      sha256 = "11rsir4k1w8hn83q88fgrz4m3h9vlwzxp3w2kf3asfndzbqq9374";
    };

    buildInputs = [
      http-client
      intarweb
      json
      uri-common
      defstruct
      regex
    ];
  };

  couchdb-view-server = eggDerivation {
    name = "couchdb-view-server-0.5";

    src = fetchegg {
      name = "couchdb-view-server";
      version = "0.5";
      sha256 = "0ihxd0bsa5xlsq5jk7ynakz9bxn4w3zhbm7py56mjfvwa323sjp1";
    };

    buildInputs = [
      json
      environments
    ];
  };

  crc = eggDerivation {
    name = "crc-1.0.1";

    src = fetchegg {
      name = "crc";
      version = "1.0.1";
      sha256 = "0230q0rxifd7zd92imfznsjgl3n10j7jysdzq8zkg2b1ria1hnjw";
    };

    buildInputs = [
      setup-helper
    ];
  };

  crunch = eggDerivation {
    name = "crunch-0.7.9999";

    src = fetchegg {
      name = "crunch";
      version = "0.7.9999";
      sha256 = "0km4kadavrzcllqyfdbby0a058spjdidf1lcd0qv7r8s0m3gr5sz";
    };

    buildInputs = [
      miscmacros
      defstruct
      matchable
      make
    ];
  };

  crypt = eggDerivation {
    name = "crypt-0.4.3";

    src = fetchegg {
      name = "crypt";
      version = "0.4.3";
      sha256 = "1dspj4pj0mqfrvy3dxp26p6hjs5871766d78pmki3ssxl5zq5lmd";
    };

    buildInputs = [
      
    ];
  };

  cryptlib = eggDerivation {
    name = "cryptlib-2.0.1";

    src = fetchegg {
      name = "cryptlib";
      version = "2.0.1";
      sha256 = "157ljisicm3x9s3j16vwmcv8ccbpys664xgjyjhbp83b87s0a83b";
    };

    buildInputs = [
      
    ];
  };

  crypto-tools = eggDerivation {
    name = "crypto-tools-1.3";

    src = fetchegg {
      name = "crypto-tools";
      version = "1.3";
      sha256 = "0442wly63zis19vh8xc9nhxgp9sabaccxylpzmchd5f1d48iag65";
    };

    buildInputs = [
      
    ];
  };

  csp = eggDerivation {
    name = "csp-1.3";

    src = fetchegg {
      name = "csp";
      version = "1.3";
      sha256 = "1y5l0zvbgjhzrmwvwcgzi9r0s3zw0dwk27qki0fgay9c9m7in1qd";
    };

    buildInputs = [
      setup-helper
      miscmacros
      check-errors
      condition-utils
      traversal
      nondeterminism
      define-structure
    ];
  };

  csv = eggDerivation {
    name = "csv-5.3";

    src = fetchegg {
      name = "csv";
      version = "5.3";
      sha256 = "0vxbfvywkv06d7zjqx57k30qb91b218knym3xsbnh3zisaij2as3";
    };

    buildInputs = [
      regex
      utf8
      typeclass
      abnf
    ];
  };

  csv-xml = eggDerivation {
    name = "csv-xml-0.10.2";

    src = fetchegg {
      name = "csv-xml";
      version = "0.10.2";
      sha256 = "1b7p9d9fnk4zpzx7pkihhmb2aqjj1c31ck1xq99xm23nj5p83fs2";
    };

    buildInputs = [
      setup-helper
    ];
  };

  data-generators = eggDerivation {
    name = "data-generators-3.2.0";

    src = fetchegg {
      name = "data-generators";
      version = "3.2.0";
      sha256 = "0dcli84ndl6xw58w3hnvh18adfg8nwzqgjsyy4qmj2wv1r62dq4s";
    };

    buildInputs = [
      random-bsd
      numbers
    ];
  };

  datatype = eggDerivation {
    name = "datatype-1.4";

    src = fetchegg {
      name = "datatype";
      version = "1.4";
      sha256 = "050bx1251y2ds8r9pjjjvgx3hjq26c993f630hpkbfq6087j2xc1";
    };

    buildInputs = [
      
    ];
  };

  date-literals = eggDerivation {
    name = "date-literals-1.1.0";

    src = fetchegg {
      name = "date-literals";
      version = "1.1.0";
      sha256 = "1fxjq4wx636b8a2vzssjal4q6hk59gpgi35bi0xgsflbcd1287a9";
    };

    buildInputs = [
      srfi-19
    ];
  };

  dbc = eggDerivation {
    name = "dbc-1.0.3";

    src = fetchegg {
      name = "dbc";
      version = "1.0.3";
      sha256 = "0ls6axp2bh9r4rbn4vvv7mampllf23fs2ip3www8invfy3bsp9sz";
    };

    buildInputs = [
      
    ];
  };

  dbus = eggDerivation {
    name = "dbus-0.93";

    src = fetchegg {
      name = "dbus";
      version = "0.93";
      sha256 = "003h1r35zr98hl3zbrb9lav4q2fsn5c4nnfpg5dbaxhqd272x23i";
    };

    buildInputs = [
      easyffi
      matchable
      miscmacros
      foreigners
      pkgs.pkgconfig
      pkgs.dbus
    ];
  };

  debug = eggDerivation {
    name = "debug-0.3.13";

    src = fetchegg {
      name = "debug";
      version = "0.3.13";
      sha256 = "0hwppza4apy876yc8nz0lak85vydf90wbn3y0qvg9pig79kdjgm9";
    };

    buildInputs = [
      cock
      matchable
      setup-helper
      syslog
    ];
  };

  define-record-and-printer = eggDerivation {
    name = "define-record-and-printer-0.1.3";

    src = fetchegg {
      name = "define-record-and-printer";
      version = "0.1.3";
      sha256 = "1ky8v7awmsfnf0d0p7ngid8vyiz986508p35vg0xmb2f9gn4px8m";
    };

    buildInputs = [
      cock
      matchable
      setup-helper
    ];
  };

  define-structure = eggDerivation {
    name = "define-structure-2.2";

    src = fetchegg {
      name = "define-structure";
      version = "2.2";
      sha256 = "0509cn500hj2b2zprpbxw2amy14wabh3vysavaj2vnq0ws04qz6x";
    };

    buildInputs = [
      setup-helper
      miscmacros
      check-errors
      condition-utils
      nondeterminism
    ];
  };

  defstruct = eggDerivation {
    name = "defstruct-1.6";

    src = fetchegg {
      name = "defstruct";
      version = "1.6";
      sha256 = "0lsgl32nmb5hxqiii4r3292cx5vqh50kp6v062nfiyid9lhrj0li";
    };

    buildInputs = [
      
    ];
  };

  describe = eggDerivation {
    name = "describe-0.1";

    src = fetchegg {
      name = "describe";
      version = "0.1";
      sha256 = "0x0jhfcmqshqahdp43s82clpqpvjy4sizslk5vnl278ahr94hx5c";
    };

    buildInputs = [
      
    ];
  };

  describe-coops = eggDerivation {
    name = "describe-coops-0.1.1";

    src = fetchegg {
      name = "describe-coops";
      version = "0.1.1";
      sha256 = "0ylga3k513skxnvx2cycdjqgijnrknwfhrm1s9ak4w4cxm8gnva7";
    };

    buildInputs = [
      describe
      coops
    ];
  };

  dict = eggDerivation {
    name = "dict-2.8.0";

    src = fetchegg {
      name = "dict";
      version = "2.8.0";
      sha256 = "0xb8xn3fp1r772ybhlq973y4amiy7xkdj15jkwwrvgg3zk0ih2gs";
    };

    buildInputs = [
      defstruct
      md5
      message-digest
      utf8
    ];
  };

  digraph = eggDerivation {
    name = "digraph-1.16";

    src = fetchegg {
      name = "digraph";
      version = "1.16";
      sha256 = "1g4jqv26xk1h0fyq8jms7d6d3sh1jx8w0y4m0l48nm520fhnrgw5";
    };

    buildInputs = [
      dyn-vector
      matchable
    ];
  };

  directory-utils = eggDerivation {
    name = "directory-utils-1.0.3";

    src = fetchegg {
      name = "directory-utils";
      version = "1.0.3";
      sha256 = "1nhww0c8819sgssg2d6vdh5vmyirfk81cbz6wsams3w4060l1rzh";
    };

    buildInputs = [
      setup-helper
      miscmacros
      list-utils
      stack
      check-errors
    ];
  };

  discount = eggDerivation {
    name = "discount-0.1";

    src = fetchegg {
      name = "discount";
      version = "0.1";
      sha256 = "01wk9rwky4gbhzr2crpapapi9da83dyqs22q5cgkbkd8ssq89iam";
    };

    buildInputs = [
      pkgs.discount
    ];
  };

  disjoint-set = eggDerivation {
    name = "disjoint-set-1.0";

    src = fetchegg {
      name = "disjoint-set";
      version = "1.0";
      sha256 = "059m4ij4zgdjc5jpi3laz20m1kah13w6d440vqgza3jz2ih29x2x";
    };

    buildInputs = [
      
    ];
  };

  dissector = eggDerivation {
    name = "dissector-1.7.7";

    src = fetchegg {
      name = "dissector";
      version = "1.7.7";
      sha256 = "0bci5h1b3vrx8nmxzg15280kybnz3malgzpbnzr4sgbyr7158gfs";
    };

    buildInputs = [
      make
    ];
  };

  doctype = eggDerivation {
    name = "doctype-2.1";

    src = fetchegg {
      name = "doctype";
      version = "2.1";
      sha256 = "1vlidjn8mg0845pmsnhva1fy7g3721knbcvcag3mwfkfc2pax10v";
    };

    buildInputs = [
      
    ];
  };

  dollar = eggDerivation {
    name = "dollar-2.0.4";

    src = fetchegg {
      name = "dollar";
      version = "2.0.4";
      sha256 = "1zg60j9x9b9y31brn3hz9rgzjm41i205hq102basssrn5ff8wcmd";
    };

    buildInputs = [
      
    ];
  };

  doodle = eggDerivation {
    name = "doodle-0.13";

    src = fetchegg {
      name = "doodle";
      version = "0.13";
      sha256 = "0hbrbwgib4j7vbdrdh4zhfn8ia4bq18fkiks2rgbgldqkb8cjgq0";
    };

    buildInputs = [
      cairo
      clojurian
      matchable
      sdl-base
    ];
  };

  dot-locking = eggDerivation {
    name = "dot-locking-0.2";

    src = fetchegg {
      name = "dot-locking";
      version = "0.2";
      sha256 = "1xa65rp5ml8cwaj3qn7fz7kh6iv628blhjhb66px6lbgx9jwaq6d";
    };

    buildInputs = [
      
    ];
  };

  dropbox = eggDerivation {
    name = "dropbox-0.2";

    src = fetchegg {
      name = "dropbox";
      version = "0.2";
      sha256 = "10xahl1xi5113612my00f20wz1lwjjl2qsyc4mpna6anpa3wjhl9";
    };

    buildInputs = [
      oauth
      intarweb
      uri-common
      medea
      rest-bind
      ssql
      vector-lib
      sql-de-lite
    ];
  };

  dsssl-utils = eggDerivation {
    name = "dsssl-utils-2.0.1";

    src = fetchegg {
      name = "dsssl-utils";
      version = "2.0.1";
      sha256 = "1fgbk19hfwvv3xq1y8nqqvqnayg1l18yvqll96fbdkp8aj7x7kcv";
    };

    buildInputs = [
      setup-helper
    ];
  };

  dummy-user = eggDerivation {
    name = "dummy-user-0.1";

    src = fetchegg {
      name = "dummy-user";
      version = "0.1";
      sha256 = "0vlkm3gydjx4pmv8s50w12zdwyql5kfzxim1shyzzg6friybx9k5";
    };

    buildInputs = [
      
    ];
  };

  dyn-vector = eggDerivation {
    name = "dyn-vector-1.12";

    src = fetchegg {
      name = "dyn-vector";
      version = "1.12";
      sha256 = "1jmlflgjsskx5z1908kzd891p4k1qd9b6psg4kxgs9sdrrzihkiv";
    };

    buildInputs = [
      vector-lib
    ];
  };

  easy-args = eggDerivation {
    name = "easy-args-0.6.0";

    src = fetchegg {
      name = "easy-args";
      version = "0.6.0";
      sha256 = "19ha8m10kknhz4708bqjp8djfi8c9mfhq1bzk1c3wbkchswzwl4m";
    };

    buildInputs = [
      srfi-37
    ];
  };

  easyffi = eggDerivation {
    name = "easyffi-1.99.7";

    src = fetchegg {
      name = "easyffi";
      version = "1.99.7";
      sha256 = "1nwb4i47s8qdzmv9s6knnwfk8xpmsj3qpvvx3s4pi6dg0g8463bb";
    };

    buildInputs = [
      silex
      matchable
      regex
      make
    ];
  };

  efax = eggDerivation {
    name = "efax-0.1";

    src = fetchegg {
      name = "efax";
      version = "0.1";
      sha256 = "19w43c6pzhbbys2bkd8bhysbi0m3vvhvx0yjj586fjycmjqmkhgg";
    };

    buildInputs = [
      http-client
      base64
      sxml-serializer
      ssax
      sxpath
    ];
  };

  egg-pack-sources = eggDerivation {
    name = "egg-pack-sources-0.3.1";

    src = fetchegg {
      name = "egg-pack-sources";
      version = "0.3.1";
      sha256 = "1hsxkijn186z6jyjay0rkxp4jv7w55ap01fv35lmlfmdzsnwg22y";
    };

    buildInputs = [
      
    ];
  };

  egg-tarballs = eggDerivation {
    name = "egg-tarballs-0.5.0";

    src = fetchegg {
      name = "egg-tarballs";
      version = "0.5.0";
      sha256 = "1rxf988hipx58nqml7d8vddhby60wqwf5b6vcs5y0jvrnyn7xj8l";
    };

    buildInputs = [
      simple-sha1
    ];
  };

  eggdoc = eggDerivation {
    name = "eggdoc-1.3.1";

    src = fetchegg {
      name = "eggdoc";
      version = "1.3.1";
      sha256 = "17ypr5sl2vnnzqxipybmjkm7d5wlsbp7fyq25qr6phgil8axafww";
    };

    buildInputs = [
      sxml-transforms
    ];
  };

  eggdoc-svnwiki = eggDerivation {
    name = "eggdoc-svnwiki-0.3";

    src = fetchegg {
      name = "eggdoc-svnwiki";
      version = "0.3";
      sha256 = "0sj1dpwdpvi0yxpgkzjykjsv6blg5f54z0nn0iq1174p7yfzk5pv";
    };

    buildInputs = [
      sxml-transforms
      sxpath
      eggdoc
      regex
    ];
  };

  elliptic-curves = eggDerivation {
    name = "elliptic-curves-1.0.2";

    src = fetchegg {
      name = "elliptic-curves";
      version = "1.0.2";
      sha256 = "1b262633hv0x27mrhzmcnv4rnb022923rm31vnrwvqk3dbw9zmvn";
    };

    buildInputs = [
      numbers
      modular-arithmetic
      defstruct
      matchable
    ];
  };

  embedded-test = eggDerivation {
    name = "embedded-test-17018.2";

    src = fetchegg {
      name = "embedded-test";
      version = "17018.2";
      sha256 = "0gh0wdlbr05fd2zkf2y29w83bbxhgysgihyd71fmyrxgxsk48vzc";
    };

    buildInputs = [
      format-compiler-base
    ];
  };

  endian-blob = eggDerivation {
    name = "endian-blob-1.5";

    src = fetchegg {
      name = "endian-blob";
      version = "1.5";
      sha256 = "1m91cfqq4pvnvsla8bbdngl51d77723zpnv96vq0way9wkakvn4q";
    };

    buildInputs = [
      byte-blob
    ];
  };

  endian-port = eggDerivation {
    name = "endian-port-3.0.2";

    src = fetchegg {
      name = "endian-port";
      version = "3.0.2";
      sha256 = "0q2gxyl90cq0in3yry3x3miin792alfgl3a1cjg4l083i694q9y4";
    };

    buildInputs = [
      iset
      endian-blob
    ];
  };

  environments = eggDerivation {
    name = "environments-1.53";

    src = fetchegg {
      name = "environments";
      version = "1.53";
      sha256 = "0w2q25fln4h9kkfvlgmr9dibbnyanmip9lnr0f1wskwrai9a0dkr";
    };

    buildInputs = [
      
    ];
  };

  epeg = eggDerivation {
    name = "epeg-2.4";

    src = fetchegg {
      name = "epeg";
      version = "2.4";
      sha256 = "0n4ymqk9za174iznq21nldvx32rnc6axx0jahnsrgnqjlmb5sq8p";
    };

    buildInputs = [
      
    ];
  };

  eping = eggDerivation {
    name = "eping-1.0";

    src = fetchegg {
      name = "eping";
      version = "1.0";
      sha256 = "0j9lgr0j2s9bnqrk96a8x4iqvwmg9xjsmjj9c9rnn317y0j4bcn2";
    };

    buildInputs = [
      socket
    ];
  };

  er-macros = eggDerivation {
    name = "er-macros-1.5.1";

    src = fetchegg {
      name = "er-macros";
      version = "1.5.1";
      sha256 = "0jzixnpy15bspada6fdhj9iacgc8zzvxahk8akpkbgx6xczzyywk";
    };

    buildInputs = [
      contracts
    ];
  };

  error-utils = eggDerivation {
    name = "error-utils-1.0.3";

    src = fetchegg {
      name = "error-utils";
      version = "1.0.3";
      sha256 = "0rfz1y489lqgcw0qjb74523zyyfwvz1bk0757jgibyhrkqg3zv5y";
    };

    buildInputs = [
      setup-helper
      moremacros
      variable-item
    ];
  };

  ersatz = eggDerivation {
    name = "ersatz-1.23";

    src = fetchegg {
      name = "ersatz";
      version = "1.23";
      sha256 = "18x8fz5aws500c5axbrgpwy2ixxq7id2bbxd3z2cbj09r2ch6cnp";
    };

    buildInputs = [
      make
      datatype
      silex
      lalr
      utf8
      uri-generic
    ];
  };

  estraier-client = eggDerivation {
    name = "estraier-client-0.3.1";

    src = fetchegg {
      name = "estraier-client";
      version = "0.3.1";
      sha256 = "1h5dzlflb8xsffgyz3ql6vcibbbllsfnka7lf8aa8waq93knvv04";
    };

    buildInputs = [
      http-client
      uri-common
      intarweb
    ];
  };

  exif = eggDerivation {
    name = "exif-0.6";

    src = fetchegg {
      name = "exif";
      version = "0.6";
      sha256 = "10sid397aa87l0y1di6g5pcxnnmq8f32xqvwy0lmdn47ngkla90f";
    };

    buildInputs = [
      foreigners
      pkgs.libexif
    ];
  };

  expand-full = eggDerivation {
    name = "expand-full-1.0.2";

    src = fetchegg {
      name = "expand-full";
      version = "1.0.2";
      sha256 = "07snma3hafz3nrg3lxnbz5wivl3p9cipxg55726pa56biv8hwrdw";
    };

    buildInputs = [
      setup-helper
    ];
  };

  expat = eggDerivation {
    name = "expat-1.4";

    src = fetchegg {
      name = "expat";
      version = "1.4";
      sha256 = "07wd81wwk8afpixwzdn3i7n8wcr6b9x5y51f9fi2vvv3bijqlxvn";
    };

    buildInputs = [
      silex
      easyffi
      pkgs.expat
    ];
  };

  fancypants = eggDerivation {
    name = "fancypants-0.4.1";

    src = fetchegg {
      name = "fancypants";
      version = "0.4.1";
      sha256 = "11sp0w3c08s7dg3rdkz1g4xzk8j8lhdirn9w64vjxsy5m2xdl191";
    };

    buildInputs = [
      
    ];
  };

  fann = eggDerivation {
    name = "fann-0.3";

    src = fetchegg {
      name = "fann";
      version = "0.3";
      sha256 = "1b6q4nskic70z6l1d7zfd5gg33z27q90gzd1p8zaaiqa239k9yyb";
    };

    buildInputs = [
      bind
    ];
  };

  fast-generic = eggDerivation {
    name = "fast-generic-0.4";

    src = fetchegg {
      name = "fast-generic";
      version = "0.4";
      sha256 = "16a3klqh649xk9bfmq8nzy9kran78xil3xc5s495jqsr34hd41xl";
    };

    buildInputs = [
      matchable
    ];
  };

  fast-loop = eggDerivation {
    name = "fast-loop-0.4";

    src = fetchegg {
      name = "fast-loop";
      version = "0.4";
      sha256 = "0wi6rv6kglkn1z0r1372z133rbhrn40qaa7adbms44l08hndbxn1";
    };

    buildInputs = [
      matchable
    ];
  };

  fastcgi = eggDerivation {
    name = "fastcgi-1.1.1";

    src = fetchegg {
      name = "fastcgi";
      version = "1.1.1";
      sha256 = "01ydpdl720m1fy93761v74wflffj0krr5ycf1wdx465qjyizk1sq";
    };

    buildInputs = [
      pkgs.fcgi
    ];
  };

  feature-test = eggDerivation {
    name = "feature-test-0.1";

    src = fetchegg {
      name = "feature-test";
      version = "0.1";
      sha256 = "05rwr3pfm86npxbx0dhh6nkdcr1mfpwj4cfr06q3dqpxykngq6hi";
    };

    buildInputs = [
      
    ];
  };

  ffmpeg-video = eggDerivation {
    name = "ffmpeg-video-1.1";

    src = fetchegg {
      name = "ffmpeg-video";
      version = "1.1";
      sha256 = "0hjmq713dkwd4m7k3v4fd8b05wwgczmabccm9c0nqi85nb7s0m8d";
    };

    buildInputs = [
      setup-helper
      miscmacros
      check-errors
      condition-utils
      define-structure
      scheme2c-compatibility
      traversal
      image-processing
      imlib2
      linear-algebra
      foreigners
      pkgs.ffmpeg
      pkgs.zlib
    ];
  };

  filepath = eggDerivation {
    name = "filepath-1.5";

    src = fetchegg {
      name = "filepath";
      version = "1.5";
      sha256 = "0bqym8hzbxlwsddkmg5nakg38z0f9g8p6bcrpmxxrqglpnxxpywx";
    };

    buildInputs = [
      matchable
    ];
  };

  flsim = eggDerivation {
    name = "flsim-4.0";

    src = fetchegg {
      name = "flsim";
      version = "4.0";
      sha256 = "17sq0dmdf28sm2z75l2jsbqnfrbicpwdyclw6zmhr3gv0lncz86p";
    };

    buildInputs = [
      make
      numbers
      mathh
      datatype
      random-mtzig
    ];
  };

  fluids = eggDerivation {
    name = "fluids-1.1";

    src = fetchegg {
      name = "fluids";
      version = "1.1";
      sha256 = "1wvsqx0lxdvnzn0al4sxrkrllnp5z1js9i67lb4ygfhnag9xiyc5";
    };

    buildInputs = [
      
    ];
  };

  fmt = eggDerivation {
    name = "fmt-0.805";

    src = fetchegg {
      name = "fmt";
      version = "0.805";
      sha256 = "1c0i8ci78mj40slg2n5j6227wb6x62r13s2msvsx322rvf7jani9";
    };

    buildInputs = [
      utf8
    ];
  };

  fnmatch = eggDerivation {
    name = "fnmatch-1.0.1";

    src = fetchegg {
      name = "fnmatch";
      version = "1.0.1";
      sha256 = "1m3jmyhkyqmjr7v628g6w5n3cqihcfnryrxn91k4597q7vjhikqr";
    };

    buildInputs = [
      
    ];
  };

  foof-loop = eggDerivation {
    name = "foof-loop-8.1";

    src = fetchegg {
      name = "foof-loop";
      version = "8.1";
      sha256 = "14ihzw44kaz3gxpd8a7sm7kc3bw9npiyarmfv8y25nqxs0yrsd5b";
    };

    buildInputs = [
      
    ];
  };

  foreigners = eggDerivation {
    name = "foreigners-1.4.1";

    src = fetchegg {
      name = "foreigners";
      version = "1.4.1";
      sha256 = "07nvyadhkd52q0kkvch1a5d7ivpmrhmyg295s4mxb1nw4wz46gfz";
    };

    buildInputs = [
      matchable
    ];
  };

  format = eggDerivation {
    name = "format-3.1.6";

    src = fetchegg {
      name = "format";
      version = "3.1.6";
      sha256 = "155rnv2lr6wp4wx2x92c0llzk4hipk5145wwmnh4l0fz9qkid1xv";
    };

    buildInputs = [
      
    ];
  };

  format-compiler = eggDerivation {
    name = "format-compiler-17017.1";

    src = fetchegg {
      name = "format-compiler";
      version = "17017.1";
      sha256 = "198xxkim58hhb8iibi021921m4cf84v2v4lir333dlxn0sc4h69q";
    };

    buildInputs = [
      embedded-test
      format-compiler-base
    ];
  };

  format-compiler-base = eggDerivation {
    name = "format-compiler-base-17017.2";

    src = fetchegg {
      name = "format-compiler-base";
      version = "17017.2";
      sha256 = "1hv2zndiz50sdj9y4cv984iz4czw0jq3v3fb1xi94abmnss38s7i";
    };

    buildInputs = [
      
    ];
  };

  format-graph = eggDerivation {
    name = "format-graph-1.8";

    src = fetchegg {
      name = "format-graph";
      version = "1.8";
      sha256 = "0w6i115r0sslkgpwf946psd0i08wvp1jlkfzzz3zxaq9ildx0lkd";
    };

    buildInputs = [
      matchable
    ];
  };

  format-textdiff = eggDerivation {
    name = "format-textdiff-1.14";

    src = fetchegg {
      name = "format-textdiff";
      version = "1.14";
      sha256 = "0hs7d4dkk91pcl8g6ka8i5p91ggnvry4y1a9573cxz32d3blda1f";
    };

    buildInputs = [
      matchable
      npdiff
      vector-lib
      dyn-vector
    ];
  };

  formular = eggDerivation {
    name = "formular-5.2";

    src = fetchegg {
      name = "formular";
      version = "5.2";
      sha256 = "0bn2l0gi2na31q9bwkwvrzp5zg7ay0yw4zd48c58cw0jrwh0jq71";
    };

    buildInputs = [
      typeclass
      input-classes
      rb-tree
      abnf
      mbox
      internet-message
      ssax
      getopt-long
      fmt
      utf8
      byte-blob-stream
    ];
  };

  fox = eggDerivation {
    name = "fox-1.1";

    src = fetchegg {
      name = "fox";
      version = "1.1";
      sha256 = "1l3m3w1z8ncrrlr1whmnmb84wak7walyhry29wswv8kpa3dn2f0d";
    };

    buildInputs = [
      numbers
    ];
  };

  fpio = eggDerivation {
    name = "fpio-1.6";

    src = fetchegg {
      name = "fpio";
      version = "1.6";
      sha256 = "15960fjfkyyzm133kqvp3wgwpniwv69mczax2wxd040p0yzlys9d";
    };

    buildInputs = [
      
    ];
  };

  fps = eggDerivation {
    name = "fps-1.1.4";

    src = fetchegg {
      name = "fps";
      version = "1.1.4";
      sha256 = "1aalh5sjm9bq25hikc5r5hff7bm2cclrfxlbr9skq4ri079rjfsk";
    };

    buildInputs = [
      records
      format
      regex
    ];
  };

  free-gettext = eggDerivation {
    name = "free-gettext-1.5.1";

    src = fetchegg {
      name = "free-gettext";
      version = "1.5.1";
      sha256 = "17sc8cjk846pgzzsncgd7mz5vi4vxrb8sgj1xjssbkcx2br5d4j7";
    };

    buildInputs = [
      charconv
    ];
  };

  freetds = eggDerivation {
    name = "freetds-0.1.8";

    src = fetchegg {
      name = "freetds";
      version = "0.1.8";
      sha256 = "1bn1zqjj471k8731ic29jxmj22x8najliigzdcq1jvjc70zw46kg";
    };

    buildInputs = [
      setup-helper
      autocompile
      srfi-19
      foreigners
      numbers
      sql-null
    ];
  };

  freetype = eggDerivation {
    name = "freetype-0.1";

    src = fetchegg {
      name = "freetype";
      version = "0.1";
      sha256 = "0pm07d88aydnd8wyq6dshac3m7k6r7cfwh1by2ad5sw6px8fad20";
    };

    buildInputs = [
      foreigners
      matchable
      pkgs.freetype
    ];
  };

  ftl = eggDerivation {
    name = "ftl-0.8";

    src = fetchegg {
      name = "ftl";
      version = "0.8";
      sha256 = "0wkafj9klfgqnlgq3p6dvvvig5p5h6wls5fdcr2wm00h569crw46";
    };

    buildInputs = [
      
    ];
  };

  ftp = eggDerivation {
    name = "ftp-1.4";

    src = fetchegg {
      name = "ftp";
      version = "1.4";
      sha256 = "1cnx8g3nnnhhfda1j92pp210mqy707bz9la3sr7a3kkjq7jinvnv";
    };

    buildInputs = [
      matchable
      regex
    ];
  };

  fuse = eggDerivation {
    name = "fuse-0.0.12";

    src = fetchegg {
      name = "fuse";
      version = "0.0.12";
      sha256 = "1nqiwg2yba5i1q0iyppafs2382f38m1im93pmfix78df68y6s6ph";
    };

    buildInputs = [
      concurrent-native-callbacks
      foreigners
      matchable
      pkgs.pkgconfig
      pkgs.fuse
    ];
  };

  g2 = eggDerivation {
    name = "g2-1.4";

    src = fetchegg {
      name = "g2";
      version = "1.4";
      sha256 = "0icxc3fdqrig0g0y442q8f1m50nq7m2fi3jfd6fpn3qsmyc8ha53";
    };

    buildInputs = [
      easyffi
    ];
  };

  gap-buffer = eggDerivation {
    name = "gap-buffer-1.1";

    src = fetchegg {
      name = "gap-buffer";
      version = "1.1";
      sha256 = "01kj6qy0gsbscp1qzivd0c7hgsg8r2npzmqwv8v3lfhzhps8a90n";
    };

    buildInputs = [
      
    ];
  };

  gather-egg-information = eggDerivation {
    name = "gather-egg-information-1.0.0";

    src = fetchegg {
      name = "gather-egg-information";
      version = "1.0.0";
      sha256 = "1xg13i5hvdwz9svm5j6yyq07jplqm1krcrwjg9lajhx58bykbwmh";
    };

    buildInputs = [
      
    ];
  };

  gdbm = eggDerivation {
    name = "gdbm-1.2";

    src = fetchegg {
      name = "gdbm";
      version = "1.2";
      sha256 = "13m3s5vsbybfskg9228rsi9p80hv3xh45mcvbfyfcz728a9y4yrx";
    };

    buildInputs = [
      setup-helper
      pkgs.gdbm
    ];
  };

  genturfahi = eggDerivation {
    name = "genturfahi-1.0.4";

    src = fetchegg {
      name = "genturfahi";
      version = "1.0.4";
      sha256 = "0l3pbmngwxm852iqixnyfwrh0lvidnkv3v8pqbp4r1pbjsi07y27";
    };

    buildInputs = [
      make
      matchable
      moremacros
      sandbox
      srfi-37
      stack
      utf8
    ];
  };

  getopt-long = eggDerivation {
    name = "getopt-long-1.16";

    src = fetchegg {
      name = "getopt-long";
      version = "1.16";
      sha256 = "02j6pa1v5c0vy0gw15gixv4khlhryv7lxdss9pcl66df0cd6r5jl";
    };

    buildInputs = [
      matchable
    ];
  };

  git = eggDerivation {
    name = "git-0.0.29";

    src = fetchegg {
      name = "git";
      version = "0.0.29";
      sha256 = "1x8vwvxkqp60fx2jmjrgkxawgadfl4cwg66jwhf1aidjfpm1j8hs";
    };

    buildInputs = [
      foreigners
      pkgs.libgit2
    ];
  };

  git-egg-author = eggDerivation {
    name = "git-egg-author-0.7";

    src = fetchegg {
      name = "git-egg-author";
      version = "0.7";
      sha256 = "01p3h0vd00d4gas6j4brs4ja8p1iargg2hg119pplj3gp27d8m4n";
    };

    buildInputs = [
      
    ];
  };

  gl-math = eggDerivation {
    name = "gl-math-0.6.1";

    src = fetchegg {
      name = "gl-math";
      version = "0.6.1";
      sha256 = "0vmy6vs2fz529sssvkp6gsnqd81n65pdl49149pb9i8c9z89ndg4";
    };

    buildInputs = [
      matchable
    ];
  };

  gl-type = eggDerivation {
    name = "gl-type-0.1.0";

    src = fetchegg {
      name = "gl-type";
      version = "0.1.0";
      sha256 = "07n18bvf9sngbvxwskigk9chajb4rr8lzv0m3yzjl1m0394pvlim";
    };

    buildInputs = [
      freetype
      miscmacros
      opengl-glew
      gl-utils
    ];
  };

  gl-utils = eggDerivation {
    name = "gl-utils-0.4.0";

    src = fetchegg {
      name = "gl-utils";
      version = "0.4.0";
      sha256 = "0d5fxgskcg4qds53lvp3afga6sx697fccbwf3z243ai69mhkvapd";
    };

    buildInputs = [
      z3
      matchable
      miscmacros
      srfi-99
      srfi-42
      make
      opengl-glew
      gl-math
    ];
  };

  glfw = eggDerivation {
    name = "glfw-0.0.3";

    src = fetchegg {
      name = "glfw";
      version = "0.0.3";
      sha256 = "0bd2rdpyvrfi4kjh2frdskapfcf74bbxnpmbnj2qv935g527ss25";
    };

    buildInputs = [
      pkgs.pkgconfig
      pkgs.glfw2
      pkgs.mesa_glu
    ];
  };

  glfw3 = eggDerivation {
    name = "glfw3-0.6.1";

    src = fetchegg {
      name = "glfw3";
      version = "0.6.1";
      sha256 = "1xsa07a0n6yvi5shmny0bcp6ild0dv40ils109227lwskh7j24sh";
    };

    buildInputs = [
      bind
      pkgs.pkgconfig
      pkgs.glfw3
    ];
  };

  glls = eggDerivation {
    name = "glls-0.8.0";

    src = fetchegg {
      name = "glls";
      version = "0.8.0";
      sha256 = "0rq97dsg8a143irdwk1w9kbry1pilj5kby9bk0v4nyi79wfdmhq1";
    };

    buildInputs = [
      make
      opengl-glew
      gl-utils
      miscmacros
      matchable
      fmt
      srfi-42
    ];
  };

  glm = eggDerivation {
    name = "glm-2.0";

    src = fetchegg {
      name = "glm";
      version = "2.0";
      sha256 = "1x1y9i7p4qbh2l0lk1p6jnmsv5vw6521kd60sr24vxxhzj1p4n7g";
    };

    buildInputs = [
      
    ];
  };

  glut = eggDerivation {
    name = "glut-1.18";

    src = fetchegg {
      name = "glut";
      version = "1.18";
      sha256 = "0qy0kpzljmzbxb83hjpsa4wbjyvx7mf4iz57fiavpl5bi7yy6l2f";
    };

    buildInputs = [
      silex
      easyffi
      pkgs.freeglut
      pkgs.mesa_glu
    ];
  };

  gochan = eggDerivation {
    name = "gochan-0.2";

    src = fetchegg {
      name = "gochan";
      version = "0.2";
      sha256 = "08jl87b04a8mnb96cz851jh4xck6ivc3y8h0gfwg91inyz7h60df";
    };

    buildInputs = [
      
    ];
  };

  gopher = eggDerivation {
    name = "gopher-1.0";

    src = fetchegg {
      name = "gopher";
      version = "1.0";
      sha256 = "0qyx5fck1ibss2l25dbchgva1hbyyhqpgx7n5d7ymrlbc3v28y56";
    };

    buildInputs = [
      sendfile
    ];
  };

  graph-bfs = eggDerivation {
    name = "graph-bfs-1.13";

    src = fetchegg {
      name = "graph-bfs";
      version = "1.13";
      sha256 = "11aj0hcl1xhg11a71y6nvj4fkglx74jzphjgl5cqapnc2ikfan1j";
    };

    buildInputs = [
      iset
      matchable
    ];
  };

  graph-cycles = eggDerivation {
    name = "graph-cycles-1.11";

    src = fetchegg {
      name = "graph-cycles";
      version = "1.11";
      sha256 = "1w5qvxdpgnvd1b2yqsdc6pda3shbris7r97dyaf4n7ckpg37sdzp";
    };

    buildInputs = [
      iset
      matchable
      graph-scc
    ];
  };

  graph-dfs = eggDerivation {
    name = "graph-dfs-1.11";

    src = fetchegg {
      name = "graph-dfs";
      version = "1.11";
      sha256 = "1jl0n99fws2my0qbmbv5l1r63wlpb5pb2nzsn10g64ivr19hzyxl";
    };

    buildInputs = [
      iset
      matchable
    ];
  };

  graph-dominators = eggDerivation {
    name = "graph-dominators-1.5";

    src = fetchegg {
      name = "graph-dominators";
      version = "1.5";
      sha256 = "0n7gmb8pd25dm5pvzn7zfvhgndd1rm0cd33ks8hm96cvv4wzkj98";
    };

    buildInputs = [
      matchable
    ];
  };

  graph-scc = eggDerivation {
    name = "graph-scc-1.11";

    src = fetchegg {
      name = "graph-scc";
      version = "1.11";
      sha256 = "0bfiwx0ccnvzxmf7mdxvva033vl9bs716601mwrayib5jlgj05hb";
    };

    buildInputs = [
      iset
      matchable
    ];
  };

  graph-separators = eggDerivation {
    name = "graph-separators-1.4";

    src = fetchegg {
      name = "graph-separators";
      version = "1.4";
      sha256 = "1avlilgn6lj857pqmrk4zmw9l2aab1wzc8yg79kn2kkhbb7si480";
    };

    buildInputs = [
      
    ];
  };

  graph-ssa = eggDerivation {
    name = "graph-ssa-1.3";

    src = fetchegg {
      name = "graph-ssa";
      version = "1.3";
      sha256 = "0hkib7ch1mgcm3kzn6kjjrdw1142lr9ghvs545awfnfqnz9b6gpc";
    };

    buildInputs = [
      matchable
      graph-dominators
    ];
  };

  graphviz = eggDerivation {
    name = "graphviz-0.8";

    src = fetchegg {
      name = "graphviz";
      version = "0.8";
      sha256 = "095x8ry9kgamzar4i6nyhslpn32gd5apia52ga72gnpn3s8nkmkb";
    };

    buildInputs = [
      cock
      matchable
      setup-helper
      pkgs.graphviz
    ];
  };

  groc = eggDerivation {
    name = "groc-1.3";

    src = fetchegg {
      name = "groc";
      version = "1.3";
      sha256 = "1wc729i9lk2nvfc59083w35jhwkmnh6zcdpapkjdmlm752jpssq4";
    };

    buildInputs = [
      datatype
      typeclass
    ];
  };

  gts = eggDerivation {
    name = "gts-1.4";

    src = fetchegg {
      name = "gts";
      version = "1.4";
      sha256 = "0i2jkxl4jjc2r3gfw2jcad6h9wdpz11jibfin70051w40g8mgdjs";
    };

    buildInputs = [
      pkgs.pkgconfig
      pkgs.gts
    ];
  };

  hardwood = eggDerivation {
    name = "hardwood-0.4";

    src = fetchegg {
      name = "hardwood";
      version = "0.4";
      sha256 = "0dy03fn2c4fyv36sgn9v1xijgxwxakamy1ykmn8sfb258j5ks74z";
    };

    buildInputs = [
      matchable
      uuid
    ];
  };

  hashes = eggDerivation {
    name = "hashes-1.1.3";

    src = fetchegg {
      name = "hashes";
      version = "1.1.3";
      sha256 = "0r9nh8wjy5h5as9s2y3l852bwjkv3ijrafr84zdjj7g18s49qxs6";
    };

    buildInputs = [
      setup-helper
      message-digest
      miscmacros
      moremacros
      box
      crc
      check-errors
    ];
  };

  heap = eggDerivation {
    name = "heap-0.4.11";

    src = fetchegg {
      name = "heap";
      version = "0.4.11";
      sha256 = "1pfh5y0nq629nkg9j2ds948qaa7bc9q2yswldlca3024i3hd4x7a";
    };

    buildInputs = [
      cock
      define-record-and-printer
      miscmacros
      vector-lib
    ];
  };

  heap-o-rama = eggDerivation {
    name = "heap-o-rama-0.1";

    src = fetchegg {
      name = "heap-o-rama";
      version = "0.1";
      sha256 = "0p6plqkv4g5wcv4pb3lhixbm7dnivwbhmjvbw737qyyvx8marlkz";
    };

    buildInputs = [
      
    ];
  };

  hen = eggDerivation {
    name = "hen-0.7";

    src = fetchegg {
      name = "hen";
      version = "0.7";
      sha256 = "1bh80haq54cb7mrgb7g8f31s95asvf3gb23f3l1qdrjwwglb3j1x";
    };

    buildInputs = [
      dsssl-utils
      list-utils
      miscmacros
      regex
      tcp6
    ];
  };

  henrietta = eggDerivation {
    name = "henrietta-1.0";

    src = fetchegg {
      name = "henrietta";
      version = "1.0";
      sha256 = "18rc7pmjak29wgm3h2vwlf9zkvd3skv3303ky738wz1bz4bckml4";
    };

    buildInputs = [
      regex
    ];
  };

  henrietta-cache = eggDerivation {
    name = "henrietta-cache-1.0";

    src = fetchegg {
      name = "henrietta-cache";
      version = "1.0";
      sha256 = "0m1b6rjcs7xbada68yybjqc8qbh92mpa3i8cfi9y429h1haqqbzb";
    };

    buildInputs = [
      http-client
      matchable
    ];
  };

  hexgrid = eggDerivation {
    name = "hexgrid-0.1.3";

    src = fetchegg {
      name = "hexgrid";
      version = "0.1.3";
      sha256 = "0gc7dqpl7xjidvm7bqd99gx498qdh24kw35v9vvfm2r3wzb2bqc7";
    };

    buildInputs = [
      bindings
    ];
  };

  hfs-plus = eggDerivation {
    name = "hfs+-0.3";

    src = fetchegg {
      name = "hfs+";
      version = "0.3";
      sha256 = "0hf0x8qfh15v4lmz1j9wjqf2kmjq6xbxahxw3yjz4mckgakdyici";
    };

    buildInputs = [
      foreigners
    ];
  };

  high-load-scheduler = eggDerivation {
    name = "high-load-scheduler-0.1";

    src = fetchegg {
      name = "high-load-scheduler";
      version = "0.1";
      sha256 = "1mb5dcws1h040fc4djjkg3pm0a31s4dcrpsphhyazlkam7q2dv1a";
    };

    buildInputs = [
      
    ];
  };

  hmac = eggDerivation {
    name = "hmac-7.0.1";

    src = fetchegg {
      name = "hmac";
      version = "7.0.1";
      sha256 = "02z038d2d2lr2rqi4yxm6yhvdw62fmyc7ykc9q6398w80sllsifr";
    };

    buildInputs = [
      message-digest
    ];
  };

  honu = eggDerivation {
    name = "honu-2.2";

    src = fetchegg {
      name = "honu";
      version = "2.2";
      sha256 = "18fb6qp0mrdk7hk3dvvd9ncc4flwslrqsh8hpp6w933wf2465gz7";
    };

    buildInputs = [
      
    ];
  };

  hostinfo = eggDerivation {
    name = "hostinfo-1.4.1";

    src = fetchegg {
      name = "hostinfo";
      version = "1.4.1";
      sha256 = "0w1s7qhym12vr4qz6xli2id39gpl72jjmrss40p0ds9n3c7rphnw";
    };

    buildInputs = [
      vector-lib
      foreigners
    ];
  };

  html-form = eggDerivation {
    name = "html-form-1.5";

    src = fetchegg {
      name = "html-form";
      version = "1.5";
      sha256 = "0g7rcy0fm088z71p3lfg9qw0hq79v35z9cx2mc5qmvpy8zq2lxd1";
    };

    buildInputs = [
      matchable
    ];
  };

  html-parser = eggDerivation {
    name = "html-parser-0.5.6";

    src = fetchegg {
      name = "html-parser";
      version = "0.5.6";
      sha256 = "1rakm0nhkzixmz76h88qa0xdmvx34dy9rsm3c66yhm9rpsln1g7n";
    };

    buildInputs = [
      
    ];
  };

  html-tags = eggDerivation {
    name = "html-tags-0.11";

    src = fetchegg {
      name = "html-tags";
      version = "0.11";
      sha256 = "0rsvsfwxl6zy1xxa229ckpq6b8v5yjqflicm45z9v5d0k462f44i";
    };

    buildInputs = [
      
    ];
  };

  html-utils = eggDerivation {
    name = "html-utils-0.10";

    src = fetchegg {
      name = "html-utils";
      version = "0.10";
      sha256 = "07wl5wfm3asmgwfy12dzk46hz7ggw7mx09b3fhf7fpsgq2bhmqsx";
    };

    buildInputs = [
      html-tags
    ];
  };

  htmlprag = eggDerivation {
    name = "htmlprag-0.16.2";

    src = fetchegg {
      name = "htmlprag";
      version = "0.16.2";
      sha256 = "1945qaqib3ghkbg3pdb6lh11jk66sl4db1zjw6nmlflr9777npgr";
    };

    buildInputs = [
      
    ];
  };

  http-client = eggDerivation {
    name = "http-client-0.7.1";

    src = fetchegg {
      name = "http-client";
      version = "0.7.1";
      sha256 = "1s03zgmb7kb99ld0f2ylqgicrab9qgza53fkgsqvg7bh5njmzhxr";
    };

    buildInputs = [
      intarweb
      uri-common
      message-digest
      md5
      string-utils
      sendfile
    ];
  };

  http-session = eggDerivation {
    name = "http-session-2.8";

    src = fetchegg {
      name = "http-session";
      version = "2.8";
      sha256 = "0gsdh4xwqgcy5db33hp3ndkp35qh0szh11kjz6w2r3gy8wyjpwxj";
    };

    buildInputs = [
      simple-sha1
      spiffy
      intarweb
      uri-common
    ];
  };

  hyde = eggDerivation {
    name = "hyde-0.21.0";

    src = fetchegg {
      name = "hyde";
      version = "0.21.0";
      sha256 = "0vqh90a39sbikzjlk8458yrpjjq3klw85cq712d9x1amqpzdxs08";
    };

    buildInputs = [
      filepath
      sxml-transforms
      doctype
      matchable
      scss
      spiffy
      colorize
      intarweb
      uri-common
      svnwiki-sxml
      defstruct
      multidoc
      atom
      rfc3339
    ];
  };

  i3 = eggDerivation {
    name = "i3-0.4";

    src = fetchegg {
      name = "i3";
      version = "0.4";
      sha256 = "1l5jgzkwkymx1gdnywm65l656m47fs4y9wcfcb9qzxx8vdx1vrk7";
    };

    buildInputs = [
      medea
      shell
      socket
      cock
      cock-utils
      pkgs.i3
    ];
  };

  iconv = eggDerivation {
    name = "iconv-1.8";

    src = fetchegg {
      name = "iconv";
      version = "1.8";
      sha256 = "0asv1vzp6vxk3nr4mbmsbgrmy3f5a2bj9j70rzr2m3p7y8x29v7v";
    };

    buildInputs = [
      
    ];
  };

  iexpr = eggDerivation {
    name = "iexpr-1.9";

    src = fetchegg {
      name = "iexpr";
      version = "1.9";
      sha256 = "00q03z9rmqcs3zxcyzw4m4sfx6rfhvwkfr8b44l9hsxkk512hghq";
    };

    buildInputs = [
      make
      datatype
      silex
      lalr
    ];
  };

  image-processing = eggDerivation {
    name = "image-processing-1.1";

    src = fetchegg {
      name = "image-processing";
      version = "1.1";
      sha256 = "15q34vdi7s6ybvcxc384kb3shrza434ivhyzqrl6qc0yixrzzzbv";
    };

    buildInputs = [
      setup-helper
      miscmacros
      check-errors
      define-structure
      traversal
      format
      scheme2c-compatibility
      linear-algebra
      imlib2
    ];
  };

  imlib2 = eggDerivation {
    name = "imlib2-0.17";

    src = fetchegg {
      name = "imlib2";
      version = "0.17";
      sha256 = "0bf42xy80dq2ps6kq7brm6vvy149rifqgpxn0bgvkkx67kf8zz8b";
    };

    buildInputs = [
      foreigners
      pkgs.imlib2
    ];
  };

  imperative-command-line-a = eggDerivation {
    name = "imperative-command-line-a-0.4";

    src = fetchegg {
      name = "imperative-command-line-a";
      version = "0.4";
      sha256 = "18xmh6z26mnxfqksqggrwqi7mqvyxjhqqqm7lw0m6yhr6qppd9iv";
    };

    buildInputs = [
      miscmacros
    ];
  };

  impromptu = eggDerivation {
    name = "impromptu-0.1.6";

    src = fetchegg {
      name = "impromptu";
      version = "0.1.6";
      sha256 = "1r1h50f9psar7h9h848c06kl2b171cjxp7r6g0gjmglcd60havpk";
    };

    buildInputs = [
      
    ];
  };

  inclub = eggDerivation {
    name = "inclub-0.2";

    src = fetchegg {
      name = "inclub";
      version = "0.2";
      sha256 = "0xj5zwhckadf8sj30dk0ggd4yz0ljvaicr59gh9vz8krbkvirqf7";
    };

    buildInputs = [
      filepath
    ];
  };

  ini-file = eggDerivation {
    name = "ini-file-0.3.4";

    src = fetchegg {
      name = "ini-file";
      version = "0.3.4";
      sha256 = "1hy06y1axlw5xwhw4m4h8sysg8gz9h2fc0522xxvghypfwxlcsa4";
    };

    buildInputs = [
      regex
    ];
  };

  inline = eggDerivation {
    name = "inline-1.9";

    src = fetchegg {
      name = "inline";
      version = "1.9";
      sha256 = "18b5z7pyh9qmzksg00d195ajsw5ha3ypcy0c6dpp26b17fa1ny4r";
    };

    buildInputs = [
      bind
      simple-sha1
    ];
  };

  input-classes = eggDerivation {
    name = "input-classes-1.0";

    src = fetchegg {
      name = "input-classes";
      version = "1.0";
      sha256 = "0d26xz5jcsk3h6r9mf8r389c9alckfpz69j0zg6dxb81y81v2v4n";
    };

    buildInputs = [
      typeclass
    ];
  };

  input-parse = eggDerivation {
    name = "input-parse-1.1";

    src = fetchegg {
      name = "input-parse";
      version = "1.1";
      sha256 = "1z90sx07h5iqaipicfhqb8wky5y36q147fy4dmdswp4nif2s10xg";
    };

    buildInputs = [
      
    ];
  };

  install = eggDerivation {
    name = "install-1.0.1";

    src = fetchegg {
      name = "install";
      version = "1.0.1";
      sha256 = "1crfjaink5ibd1g56img1kknjl57jdc6kh1hzkhkphr142dpwabn";
    };

    buildInputs = [
      
    ];
  };

  intarweb = eggDerivation {
    name = "intarweb-1.3";

    src = fetchegg {
      name = "intarweb";
      version = "1.3";
      sha256 = "0izlby78c25py29bdcbc0vapb6h7xgchqrzi6i51d0rb3mnwy88h";
    };

    buildInputs = [
      defstruct
      uri-common
      base64
    ];
  };

  interfaces = eggDerivation {
    name = "interfaces-0.3";

    src = fetchegg {
      name = "interfaces";
      version = "0.3";
      sha256 = "143fps27g6xhgp6r6qar72aqlarygj23r9x622srdcnsc425d4gk";
    };

    buildInputs = [
      records
    ];
  };

  internet-message = eggDerivation {
    name = "internet-message-6.0";

    src = fetchegg {
      name = "internet-message";
      version = "6.0";
      sha256 = "0y4i1ag8lndg8bn6lwhxpil0akgjsz4x48ymkp9q0590a2x9xkcw";
    };

    buildInputs = [
      typeclass
      utf8
      abnf
    ];
  };

  internet-timestamp = eggDerivation {
    name = "internet-timestamp-3.3";

    src = fetchegg {
      name = "internet-timestamp";
      version = "3.3";
      sha256 = "1iaxj9l47qflh210l7sarl19gwkvndpphb4y4jmsk6x9b36a51sy";
    };

    buildInputs = [
      typeclass
      abnf
    ];
  };

  interp1d = eggDerivation {
    name = "interp1d-1.12";

    src = fetchegg {
      name = "interp1d";
      version = "1.12";
      sha256 = "16xai9c1sy06gixc34f787iglasxyhyn0q62g2grvgv1fwv80zhz";
    };

    buildInputs = [
      
    ];
  };

  interval-digraph = eggDerivation {
    name = "interval-digraph-4.1";

    src = fetchegg {
      name = "interval-digraph";
      version = "4.1";
      sha256 = "1frzfnq8ldc81l3kws3dl07pqhs6f7bs0jm8l71s7zqr8midw33m";
    };

    buildInputs = [
      cis
      rb-tree
      typeclass
    ];
  };

  ioctl = eggDerivation {
    name = "ioctl-0.2";

    src = fetchegg {
      name = "ioctl";
      version = "0.2";
      sha256 = "13dp8snd6r04n9d8p31zcfns1gmwfr15ahj1x5x76mbhl2xcx4wc";
    };

    buildInputs = [
      foreigners
    ];
  };

  ir-macros = eggDerivation {
    name = "ir-macros-1.7.1";

    src = fetchegg {
      name = "ir-macros";
      version = "1.7.1";
      sha256 = "1ljf9wxmf0mv5p2nn31hvbzim3lbhbpn9cf3y3pvdalxykbbck90";
    };

    buildInputs = [
      contracts
    ];
  };

  irc = eggDerivation {
    name = "irc-1.9.8";

    src = fetchegg {
      name = "irc";
      version = "1.9.8";
      sha256 = "0ilg2y0a8m1banhz9xaa4nfcn8akc9jndwrsh7m398id2i5fsr1q";
    };

    buildInputs = [
      matchable
      regex
    ];
  };

  isbn = eggDerivation {
    name = "isbn-0.8";

    src = fetchegg {
      name = "isbn";
      version = "0.8";
      sha256 = "0818wzqmyz95mfxwz191887kyvxqq9k36xzyi92iydnwzm79pizi";
    };

    buildInputs = [
      json
      sxml-transforms
      sxpath
      intarweb
      http-client
      ssax
      uri-common
    ];
  };

  iset = eggDerivation {
    name = "iset-1.9";

    src = fetchegg {
      name = "iset";
      version = "1.9";
      sha256 = "1704qy4s1wsb6xf8j3a8mad6y3lgic7fvp64jwai0by9shpr7v25";
    };

    buildInputs = [
      
    ];
  };

  iup = eggDerivation {
    name = "iup-1.2.1";

    src = fetchegg {
      name = "iup";
      version = "1.2.1";
      sha256 = "1kj5a2xjkxs087n8mxjhslxy4vhl02khbi27r5530a2iharf8wi5";
    };

    buildInputs = [
      srfi-42
    ];
  };

  javahack = eggDerivation {
    name = "javahack-0.5";

    src = fetchegg {
      name = "javahack";
      version = "0.5";
      sha256 = "1xx1shy487wb9kh87qk57vwrk975v2kskb25biilwagprd64rmpw";
    };

    buildInputs = [
      matchable
    ];
  };

  jni = eggDerivation {
    name = "jni-0.5";

    src = fetchegg {
      name = "jni";
      version = "0.5";
      sha256 = "0dzv0lhsg706vv2y5id53hmxp47mpyfwylg67yc75pliwkjizm0l";
    };

    buildInputs = [
      foreigners
      moremacros
      numbers
      make
      shell
      pkgs.ant
      pkgs.jdk
    ];
  };

  jsmin = eggDerivation {
    name = "jsmin-2.1";

    src = fetchegg {
      name = "jsmin";
      version = "2.1";
      sha256 = "16bpvv5a21zrhznfynih4wi1am2v9yhlsd4vxx2vqfjqxwr35a49";
    };

    buildInputs = [
      
    ];
  };

  jso = eggDerivation {
    name = "jso-0.2";

    src = fetchegg {
      name = "jso";
      version = "0.2";
      sha256 = "1m9qyyd926x59a6zsmazdk3xqh90jp09kl0x5nhwiwwpwj91gi0n";
    };

    buildInputs = [
      
    ];
  };

  json = eggDerivation {
    name = "json-1.5";

    src = fetchegg {
      name = "json";
      version = "1.5";
      sha256 = "1fmljzdwpa2gnpyvvvldszjs0287994lm7wqff3d54f435q87vxq";
    };

    buildInputs = [
      packrat
    ];
  };

  json-abnf = eggDerivation {
    name = "json-abnf-6.0";

    src = fetchegg {
      name = "json-abnf";
      version = "6.0";
      sha256 = "0k515idw48zv8rn8bcpwaqfsk6zlff3nilvhizsiin8lnvfwskp1";
    };

    buildInputs = [
      abnf
      utf8
    ];
  };

  json-rpc = eggDerivation {
    name = "json-rpc-0.1.7.1";

    src = fetchegg {
      name = "json-rpc";
      version = "0.1.7.1";
      sha256 = "1va3bn1dz1gi1wm1lxi1r491cfgfxy7ckv8i6h9bmznc1lscghq3";
    };

    buildInputs = [
      medea
      mailbox-threads
    ];
  };

  kalaha = eggDerivation {
    name = "kalaha-0.2";

    src = fetchegg {
      name = "kalaha";
      version = "0.2";
      sha256 = "0v914pyz9xsqb418bhyz5big6wqdlkdpqqhm68bp0hsf5dypcapk";
    };

    buildInputs = [
      ncurses
      mojo
      miscmacros
      matchable
      coops
      pkgs.ncurses
    ];
  };

  kanren = eggDerivation {
    name = "kanren-4.505";

    src = fetchegg {
      name = "kanren";
      version = "4.505";
      sha256 = "160hh33hqv14yx30bay6z8j8lmbwdwpprclmqpawc2i06kdh2viq";
    };

    buildInputs = [
      make
    ];
  };

  kd-tree = eggDerivation {
    name = "kd-tree-4.11";

    src = fetchegg {
      name = "kd-tree";
      version = "4.11";
      sha256 = "0nkvrvymq8aqnch3r3bm10f7skd6ss1qmbgybjw6cjqbdwfclk2z";
    };

    buildInputs = [
      datatype
      typeclass
      cis
    ];
  };

  kvlists = eggDerivation {
    name = "kvlists-1.0.5";

    src = fetchegg {
      name = "kvlists";
      version = "1.0.5";
      sha256 = "1d9niaxfi4jpz6y2l5zpbf96am16yrsg483lblaps3xmghpb2j7i";
    };

    buildInputs = [
      setup-helper
    ];
  };

  lalr = eggDerivation {
    name = "lalr-2.4.3";

    src = fetchegg {
      name = "lalr";
      version = "2.4.3";
      sha256 = "0f5m0cvlpca1hgq6y5r6wqawvh9rxlfjvvcwmjyf0xg2sgcdys2z";
    };

    buildInputs = [
      
    ];
  };

  latch = eggDerivation {
    name = "latch-0.2";

    src = fetchegg {
      name = "latch";
      version = "0.2";
      sha256 = "0v3hmnyil7c0h7ydd5855j3dkbjwwvgpyb8b5drnary4bxzhhfgm";
    };

    buildInputs = [
      matchable
    ];
  };

  lazy-ffi = eggDerivation {
    name = "lazy-ffi-1.8.5";

    src = fetchegg {
      name = "lazy-ffi";
      version = "1.8.5";
      sha256 = "0bp03cabdi3k4v0xdg2hmhdzz9w3vq2fxx4sp95awvlar7ipc4s7";
    };

    buildInputs = [
      easyffi
    ];
  };

  lazy-lists = eggDerivation {
    name = "lazy-lists-0.8.1";

    src = fetchegg {
      name = "lazy-lists";
      version = "0.8.1";
      sha256 = "0wgffn62bv2s1fgqjxg1grv327xwflqnwlp19rgj1m4jqnngzs6i";
    };

    buildInputs = [
      
    ];
  };

  lazy-seq = eggDerivation {
    name = "lazy-seq-0.0.6";

    src = fetchegg {
      name = "lazy-seq";
      version = "0.0.6";
      sha256 = "02ddpwwhlnsb7ln7vgyvj2kq5glcwsgzx8b5lxrn9wb44gs3rm7d";
    };

    buildInputs = [
      
    ];
  };

  leptonica = eggDerivation {
    name = "leptonica-0.2";

    src = fetchegg {
      name = "leptonica";
      version = "0.2";
      sha256 = "0nnqml47j1j699xiv0gj55vp0av6f1j2y1i909z73yd5iasaz7k8";
    };

    buildInputs = [
      
    ];
  };

  level = eggDerivation {
    name = "level-1.0.0";

    src = fetchegg {
      name = "level";
      version = "1.0.0";
      sha256 = "1yvssz25573a3r7safvvjq3aicqq0drp8y734pv6kch48bhyzlgg";
    };

    buildInputs = [
      interfaces
    ];
  };

  leveldb = eggDerivation {
    name = "leveldb-2.0.0";

    src = fetchegg {
      name = "leveldb";
      version = "2.0.0";
      sha256 = "0vybzq55c69drv2ynbgl75nxcg08phg4r5v9m8hhp0cmlw13wqfi";
    };

    buildInputs = [
      utf8
      level
      interfaces
      coops
      lazy-seq
    ];
  };

  levenshtein = eggDerivation {
    name = "levenshtein-1.0.2";

    src = fetchegg {
      name = "levenshtein";
      version = "1.0.2";
      sha256 = "1480zg6pyg4fhbh0s505xvskvxhrrcdxp8zzibhfzz5hh6w07s1b";
    };

    buildInputs = [
      setup-helper
      check-errors
      vector-lib
      srfi-63
      utf8
      numbers
      miscmacros
      moremacros
    ];
  };

  lexgen = eggDerivation {
    name = "lexgen-7.1";

    src = fetchegg {
      name = "lexgen";
      version = "7.1";
      sha256 = "18fhvcxgdzwnhcmjl4mpcb4b1aqfhmqfldi7vncmpqnv29n1ayxz";
    };

    buildInputs = [
      utf8
      typeclass
      input-classes
    ];
  };

  libsvm = eggDerivation {
    name = "libsvm-0.2";

    src = fetchegg {
      name = "libsvm";
      version = "0.2";
      sha256 = "0bd181cpfy2i87ia8fqzqf2585cfcx8prlcgra938f2yx6zqyvca";
    };

    buildInputs = [
      
    ];
  };

  linden-scheme = eggDerivation {
    name = "linden-scheme-0.1.3";

    src = fetchegg {
      name = "linden-scheme";
      version = "0.1.3";
      sha256 = "1wgsyc97y8a3vlpbs0w1zr2p1mwmnj1ianz39d3gxgd15hv73gz9";
    };

    buildInputs = [
      gl-math
    ];
  };

  linear-algebra = eggDerivation {
    name = "linear-algebra-1.4";

    src = fetchegg {
      name = "linear-algebra";
      version = "1.4";
      sha256 = "0dbys5iin30nk5mjbmp1m2alblkx05c1j2vxdyaywzxl6ww1dz63";
    };

    buildInputs = [
      setup-helper
      miscmacros
      check-errors
      condition-utils
      traversal
      AD
      define-structure
    ];
  };

  linenoise = eggDerivation {
    name = "linenoise-0.7";

    src = fetchegg {
      name = "linenoise";
      version = "0.7";
      sha256 = "00sigi1mgaq8xka5hc2vd19vkgzib9wr5qbdf21k3i204q5qrjpv";
    };

    buildInputs = [
      
    ];
  };

  list-bindings = eggDerivation {
    name = "list-bindings-1.9.2";

    src = fetchegg {
      name = "list-bindings";
      version = "1.9.2";
      sha256 = "1akbf1s6f83kvl973bxsvcagrxvk85p0q45l8q72gdck4x9wk1aw";
    };

    buildInputs = [
      
    ];
  };

  list-of = eggDerivation {
    name = "list-of-0.1";

    src = fetchegg {
      name = "list-of";
      version = "0.1";
      sha256 = "1plj7prs7bp0j6lxcivcwi9lj7qyn55cgk1ris2qv7w2314r9hgw";
    };

    buildInputs = [
      
    ];
  };

  list-utils = eggDerivation {
    name = "list-utils-1.1.1";

    src = fetchegg {
      name = "list-utils";
      version = "1.1.1";
      sha256 = "07qj1gpqp4mhsszxllrlrsvv8s1lcwmirzpjylb8q5xb12smw6lv";
    };

    buildInputs = [
      setup-helper
      check-errors
    ];
  };

  locale = eggDerivation {
    name = "locale-0.6.13";

    src = fetchegg {
      name = "locale";
      version = "0.6.13";
      sha256 = "0fq2wqmqv80hsrlwyydlpapynh89jj6hx93vap7mlfszzsd9iq3p";
    };

    buildInputs = [
      setup-helper
      miscmacros
      lookup-table
      check-errors
      regex
    ];
  };

  log5scm = eggDerivation {
    name = "log5scm-1.1.2";

    src = fetchegg {
      name = "log5scm";
      version = "1.1.2";
      sha256 = "1ac2qc731z606dw9r5pfgrsc2nf9xa9lyx4jnnvjnfzqxlivd8ch";
    };

    buildInputs = [
      defstruct
      syslog
    ];
  };

  lognum = eggDerivation {
    name = "lognum-1.2";

    src = fetchegg {
      name = "lognum";
      version = "1.2";
      sha256 = "1zp544ndf8g24jljrgj5rkpggsq1qf0bxg6p5my2bdm7w162nx85";
    };

    buildInputs = [
      matchable
      datatype
    ];
  };

  logpro = eggDerivation {
    name = "logpro-1.09";

    src = fetchegg {
      name = "logpro";
      version = "1.09";
      sha256 = "0p6qgwk5gc9g38jkzmws6cx9ghwkwq1k29ka56hfimfgxkzha1sr";
    };

    buildInputs = [
      format
      regex
      regex-literals
    ];
  };

  lookup-table = eggDerivation {
    name = "lookup-table-1.13.5";

    src = fetchegg {
      name = "lookup-table";
      version = "1.13.5";
      sha256 = "1nzly6rhynawlvzlyilk8z8cxz57cf9n5iv20glkhh28pz2izmrb";
    };

    buildInputs = [
      setup-helper
      check-errors
      miscmacros
      record-variants
      synch
    ];
  };

  loop = eggDerivation {
    name = "loop-1.4";

    src = fetchegg {
      name = "loop";
      version = "1.4";
      sha256 = "1fw2js4mv94l2r6dzji2i1cwc2cfbfymwz0ajrh3i4v10ksinkwd";
    };

    buildInputs = [
      make
    ];
  };

  loops = eggDerivation {
    name = "loops-1.0.4";

    src = fetchegg {
      name = "loops";
      version = "1.0.4";
      sha256 = "0pfbnkjkqq3dg3b85vjnqkfiy9wyhrra962nnf2nywqs2gfa37p0";
    };

    buildInputs = [
      
    ];
  };

  loopy-loop = eggDerivation {
    name = "loopy-loop-0.5.4";

    src = fetchegg {
      name = "loopy-loop";
      version = "0.5.4";
      sha256 = "1493ghy0wqcrbq9b2pc5amb4r5h8bzlzddjzl7k0qqgbbs0xnd7z";
    };

    buildInputs = [
      matchable
    ];
  };

  low-level-macros = eggDerivation {
    name = "low-level-macros-3.4.2";

    src = fetchegg {
      name = "low-level-macros";
      version = "3.4.2";
      sha256 = "0ygn7k3if8sncghc11brhpy89m23n61zslj36b8sfi7bka19qsav";
    };

    buildInputs = [
      
    ];
  };

  lowdown = eggDerivation {
    name = "lowdown-0.0.7";

    src = fetchegg {
      name = "lowdown";
      version = "0.0.7";
      sha256 = "18h7l6w52qwl9hp36z9zfz0zanmy8jcafi04bhjg27zasjxqd84y";
    };

    buildInputs = [
      comparse
      clojurian
      latch
      sxml-transforms
      char-set-literals
      fancypants
    ];
  };

  lru-cache = eggDerivation {
    name = "lru-cache-0.5.3";

    src = fetchegg {
      name = "lru-cache";
      version = "0.5.3";
      sha256 = "0z6g3106c4j21v968hfzy9nnbfq2d83y0nyd20aifpq4g55c0d40";
    };

    buildInputs = [
      record-variants
    ];
  };

  lua = eggDerivation {
    name = "lua-0.4";

    src = fetchegg {
      name = "lua";
      version = "0.4";
      sha256 = "1rld144wi1219kin5vylkal6rnv4yfqi66q6ygvkfgyzd3akxdj3";
    };

    buildInputs = [
      dollar
      make
    ];
  };

  lz4 = eggDerivation {
    name = "lz4-0.2";

    src = fetchegg {
      name = "lz4";
      version = "0.2";
      sha256 = "0cvy044apqa31prrjwysbxf2bxa4wg7dv5nyglwlsbka3zaim63a";
    };

    buildInputs = [
      
    ];
  };

  lzma = eggDerivation {
    name = "lzma-1.3";

    src = fetchegg {
      name = "lzma";
      version = "1.3";
      sha256 = "1363hy0iam8736j6sbnklbf0mam164m9my56yxamrs4p65vvyshm";
    };

    buildInputs = [
      pkgs.lzma
    ];
  };

  magic = eggDerivation {
    name = "magic-0.0.1";

    src = fetchegg {
      name = "magic";
      version = "0.0.1";
      sha256 = "1n0xlidxj36sbkmkay35kc4hbxhgabhhbmyw19nhnjqz4vzm362k";
    };

    buildInputs = [
      
    ];
  };

  mailbox = eggDerivation {
    name = "mailbox-2.1.5";

    src = fetchegg {
      name = "mailbox";
      version = "2.1.5";
      sha256 = "1fm5c0s3fv8k7x6p14hm6qlf75b9pryvs5cpkbgaf7c7dfjbwyss";
    };

    buildInputs = [
      setup-helper
      check-errors
      condition-utils
      record-variants
    ];
  };

  mailbox-threads = eggDerivation {
    name = "mailbox-threads-1.4";

    src = fetchegg {
      name = "mailbox-threads";
      version = "1.4";
      sha256 = "1nrhj2xnqwisy5m9gs39nxhy6ssllkycy4c11r6m7xw2cj0q1w76";
    };

    buildInputs = [
      mailbox
    ];
  };

  make = eggDerivation {
    name = "make-1.7";

    src = fetchegg {
      name = "make";
      version = "1.7";
      sha256 = "0y13yr8vyz2hf4gwzd98k0f5824rfxvpp4nffw0hczs0z1kzwpbc";
    };

    buildInputs = [
      
    ];
  };

  manual-labor = eggDerivation {
    name = "manual-labor-0.1.1";

    src = fetchegg {
      name = "manual-labor";
      version = "0.1.1";
      sha256 = "16sixl53kv6kaga4lkvypsv1qvbk1sx58vpzmksdrxzpxb07d1vp";
    };

    buildInputs = [
      regex
      matchable
      svnwiki-sxml
      uri-generic
      chicken-doc-html
    ];
  };

  markdown-svnwiki = eggDerivation {
    name = "markdown-svnwiki-0.2.0";

    src = fetchegg {
      name = "markdown-svnwiki";
      version = "0.2.0";
      sha256 = "1lcmf5spiyhgkxxxbqp9ihqwcii0slfxcqwb4lxxqpmpj5k0pzrx";
    };

    buildInputs = [
      lowdown
      sxml-transforms
      miscmacros
      srfi-37
    ];
  };

  mat5-lib = eggDerivation {
    name = "mat5-lib-2.5";

    src = fetchegg {
      name = "mat5-lib";
      version = "2.5";
      sha256 = "1wd2cwy7r1m5acwgiszxpmym3yzpa9m7razv655z4cw8f6k58rfm";
    };

    buildInputs = [
      datatype
      srfi-63
      iset
      endian-port
      z3
    ];
  };

  matchable = eggDerivation {
    name = "matchable-3.3";

    src = fetchegg {
      name = "matchable";
      version = "3.3";
      sha256 = "07y3lpzgm4djiwi9y2adc796f9kwkmdr28fkfkw65syahdax8990";
    };

    buildInputs = [
      
    ];
  };

  mathh = eggDerivation {
    name = "mathh-2.2.4";

    src = fetchegg {
      name = "mathh";
      version = "2.2.4";
      sha256 = "0drqjmpcsr652w1a0v6ank1qrp75ncsz8xzhng2d8p17fshga7jr";
    };

    buildInputs = [
      setup-helper
    ];
  };

  matlab = eggDerivation {
    name = "matlab-1.3";

    src = fetchegg {
      name = "matlab";
      version = "1.3";
      sha256 = "1wc3sly3dj3cqi573gzynyp9wqlsh0ny6vyrglafpw0nhrr66anh";
    };

    buildInputs = [
      setup-helper
      define-structure
      traversal
      miscmacros
      bind
      easyffi
      define-structure
      linear-algebra
      scheme2c-compatibility
    ];
  };

  matrix-utils = eggDerivation {
    name = "matrix-utils-1.15";

    src = fetchegg {
      name = "matrix-utils";
      version = "1.15";
      sha256 = "0idjjkj01rkiqsmyif9jfv6df6ysacbmmmd7grk0zj2lli70n76x";
    };

    buildInputs = [
      srfi-42
      srfi-4-comprehensions
      blas
    ];
  };

  mbox = eggDerivation {
    name = "mbox-4.0";

    src = fetchegg {
      name = "mbox";
      version = "4.0";
      sha256 = "1ar4phnl5sh1b4v0x9i5n3szgdr65x91smvcldkdrd0glwbv8q7g";
    };

    buildInputs = [
      typeclass
      input-classes
      abnf
      internet-message
      internet-timestamp
    ];
  };

  md5 = eggDerivation {
    name = "md5-3.1.0";

    src = fetchegg {
      name = "md5";
      version = "3.1.0";
      sha256 = "0bka43nx8x9b0b079qpvml2fl20km19ny0qjmhwzlh6rwmzazj2a";
    };

    buildInputs = [
      message-digest
    ];
  };

  medea = eggDerivation {
    name = "medea-0.1.5";

    src = fetchegg {
      name = "medea";
      version = "0.1.5";
      sha256 = "09favy2qwshpkrwgnbj50ya5hysysaala5q9d5wailaykgkwsbxs";
    };

    buildInputs = [
      comparse
    ];
  };

  memcached = eggDerivation {
    name = "memcached-1.3";

    src = fetchegg {
      name = "memcached";
      version = "1.3";
      sha256 = "0v301cbanyh3qv6h5ph0lmp27py3phx8x8k7hsjxgpghv4m8hgmc";
    };

    buildInputs = [
      s11n
    ];
  };

  message-digest = eggDerivation {
    name = "message-digest-3.1.0";

    src = fetchegg {
      name = "message-digest";
      version = "3.1.0";
      sha256 = "1w6bax19dwgih78vcimiws0rja7qsd8hmbm6qqg2hf9cw3vab21s";
    };

    buildInputs = [
      setup-helper
      miscmacros
      check-errors
      variable-item
      blob-utils
      string-utils
    ];
  };

  micro-benchmark = eggDerivation {
    name = "micro-benchmark-0.2.1";

    src = fetchegg {
      name = "micro-benchmark";
      version = "0.2.1";
      sha256 = "1wilqz5yq131mh4fdlcm9cc3galdcq8j3dsapni6i0bbz3c3ax6i";
    };

    buildInputs = [
      
    ];
  };

  miniML = eggDerivation {
    name = "miniML-1.11";

    src = fetchegg {
      name = "miniML";
      version = "1.11";
      sha256 = "1418sks4carhar8cx8hkp7y557k3l3868cczby61n7dy665wdz8w";
    };

    buildInputs = [
      make
      static-modules
      datatype
      silex
      lalr
    ];
  };

  miscmacros = eggDerivation {
    name = "miscmacros-2.96";

    src = fetchegg {
      name = "miscmacros";
      version = "2.96";
      sha256 = "1ajdgjrni10i2hmhcp4rawnxajjxry3kmq1krdmah4sf0kjrgajc";
    };

    buildInputs = [
      
    ];
  };

  missbehave = eggDerivation {
    name = "missbehave-0.20";

    src = fetchegg {
      name = "missbehave";
      version = "0.20";
      sha256 = "0nmh7nplj7j62mh186hzpz1573in58in08kfh18c8vmzy6kq8jhw";
    };

    buildInputs = [
      args
      fmt
      advice
      miscmacros
      sequences
    ];
  };

  mistie = eggDerivation {
    name = "mistie-1.5";

    src = fetchegg {
      name = "mistie";
      version = "1.5";
      sha256 = "05xv7zi8nr6m0jfqksgryxr03ljf7mm0bdlwrhbx20gix5g93dd1";
    };

    buildInputs = [
      eggdoc
    ];
  };

  modular-arithmetic = eggDerivation {
    name = "modular-arithmetic-1.0.2";

    src = fetchegg {
      name = "modular-arithmetic";
      version = "1.0.2";
      sha256 = "0k2w5g1klxi48rmflx10j9cf7j9l6p5c691bcm6l9c46dn6d8nfp";
    };

    buildInputs = [
      numbers
      matchable
    ];
  };

  module-declarations = eggDerivation {
    name = "module-declarations-0.0.1";

    src = fetchegg {
      name = "module-declarations";
      version = "0.0.1";
      sha256 = "0sn1wvs549i5nfijvz01zxcllykx6pyjn484ln6l9k6bvpgd7308";
    };

    buildInputs = [
      matchable
    ];
  };

  mojo = eggDerivation {
    name = "mojo-0.0.1";

    src = fetchegg {
      name = "mojo";
      version = "0.0.1";
      sha256 = "17g5xkycf4wfhdrihi0lai0az97fagwa5z6srn9f82292xy77cgb";
    };

    buildInputs = [
      ncurses
      coops
      miscmacros
    ];
  };

  monad = eggDerivation {
    name = "monad-3.2";

    src = fetchegg {
      name = "monad";
      version = "3.2";
      sha256 = "0ab6av09ghisqswlr4w08arc8zcp47hm2bcwxjakgisiynqxvxsx";
    };

    buildInputs = [
      
    ];
  };

  moremacros = eggDerivation {
    name = "moremacros-1.3.1";

    src = fetchegg {
      name = "moremacros";
      version = "1.3.1";
      sha256 = "045jrlzh0rjcqdgicqwwfcvhlmsxlis990na6j76k4ivs679nh21";
    };

    buildInputs = [
      setup-helper
      miscmacros
    ];
  };

  mowedline = eggDerivation {
    name = "mowedline-0.2pre3";

    src = fetchegg {
      name = "mowedline";
      version = "0.2pre3";
      sha256 = "13wyny51lwcbj2h3xkz7q7aj0n7gldyk10k2h5pnfiqg2c0jlvkc";
    };

    buildInputs = [
      coops
      dbus
      filepath
      imperative-command-line-a
      list-utils
      mailbox
      miscmacros
      regex
      xft
      xlib
      xtypes
    ];
  };

  mpd-client = eggDerivation {
    name = "mpd-client-1.13";

    src = fetchegg {
      name = "mpd-client";
      version = "1.13";
      sha256 = "0hba35lgy4qd038f3qqhbpkbfdwxrrn0l5863h3w5kks4dv5ljnd";
    };

    buildInputs = [
      regex
    ];
  };

  mpfi = eggDerivation {
    name = "mpfi-0.1";

    src = fetchegg {
      name = "mpfi";
      version = "0.1";
      sha256 = "12pzr2a85842q38bdi6amsr29cqlc11qfzk6zjil4wq1j62sj6sa";
    };

    buildInputs = [
      
    ];
  };

  mpi = eggDerivation {
    name = "mpi-1.15";

    src = fetchegg {
      name = "mpi";
      version = "1.15";
      sha256 = "1xs3ss8dq7x29i4yjsbw4qansb2hbaj0ynalblr87vqxwmdl90g9";
    };

    buildInputs = [
      
    ];
  };

  msgpack = eggDerivation {
    name = "msgpack-0.2";

    src = fetchegg {
      name = "msgpack";
      version = "0.2";
      sha256 = "0za3mrsbrpyrhbkd6mn067nbx0q2fmf8j8vygkgq6av6ym9p56if";
    };

    buildInputs = [
      byte-blob
      numbers
      blob-utils
      bind
    ];
  };

  multi-methods = eggDerivation {
    name = "multi-methods-2.0.2";

    src = fetchegg {
      name = "multi-methods";
      version = "2.0.2";
      sha256 = "1zm3dgzkwvwkqzzi08jv62qymyzdpahy6i0x382zn2r4i9wp02a4";
    };

    buildInputs = [
      
    ];
  };

  multidoc = eggDerivation {
    name = "multidoc-2.3.2";

    src = fetchegg {
      name = "multidoc";
      version = "2.3.2";
      sha256 = "10ddnw2273q5978bwg229nqyslrc8lv4ky4q5fyl0z4g8cvmb0sf";
    };

    buildInputs = [
      regex
      datatype
      sxml-transforms
      doctype
      uri-generic
      sxpath
    ];
  };

  multipart-form-data = eggDerivation {
    name = "multipart-form-data-0.1";

    src = fetchegg {
      name = "multipart-form-data";
      version = "0.1";
      sha256 = "029q3w0z2q5l74d9lkzgdpfp6ramcqd4krx1if0wc7bj3gl329d6";
    };

    buildInputs = [
      intarweb
      comparse
      records
    ];
  };

  mw = eggDerivation {
    name = "mw-0.2.1";

    src = fetchegg {
      name = "mw";
      version = "0.2.1";
      sha256 = "052hak4gz3gfyx8gl5dyil34xchcpzrwizi3qgr6z65kkfhbjzkc";
    };

    buildInputs = [
      uri-common
      intarweb
      http-client
      z3
      ssax
      sxpath
      mw-core
    ];
  };

  mw-core = eggDerivation {
    name = "mw-core-0.2.2";

    src = fetchegg {
      name = "mw-core";
      version = "0.2.2";
      sha256 = "0nlg4c1iv915y1sk5j28qg03dzpyvvv26z5lpd41ayqlxl9rdkr4";
    };

    buildInputs = [
      uri-common
      intarweb
      http-client
      z3
      ssax
      sxpath
    ];
  };

  mysql-client = eggDerivation {
    name = "mysql-client-0.9";

    src = fetchegg {
      name = "mysql-client";
      version = "0.9";
      sha256 = "1yqzpi27njn9g96597mm2g227q7v2j71940k46mj35xn10raxwmk";
    };

    buildInputs = [
      
    ];
  };

  nanomsg = eggDerivation {
    name = "nanomsg-0.2";

    src = fetchegg {
      name = "nanomsg";
      version = "0.2";
      sha256 = "0miy3bhxq6km7pajni37ngfkx11r3lhayrdjfda0rvj638b53za2";
    };

    buildInputs = [
      foreigners
    ];
  };

  ncurses = eggDerivation {
    name = "ncurses-1.5";

    src = fetchegg {
      name = "ncurses";
      version = "1.5";
      sha256 = "12bb2hmzi7k60vdwiz4lf977hx702ajdgnbplp9vha0cmnh32h1i";
    };

    buildInputs = [
      easyffi
    ];
  };

  nemo = eggDerivation {
    name = "nemo-9.1";

    src = fetchegg {
      name = "nemo";
      version = "9.1";
      sha256 = "0k2cj1fm42f9kyr16i2i2ahj9xii8q30mp5wq2xblnbsz2vwbnnx";
    };

    buildInputs = [
      make
      matchable
      iexpr
      sxml-transforms
      ssax
      sxpath
      datatype
      vector-lib
      digraph
      graph-bfs
      graph-cycles
      unitconv
      mathh
      strictly-pretty
      varsubst
      lalr
      ersatz
      uri-generic
      getopt-long
    ];
  };

  neo4j = eggDerivation {
    name = "neo4j-0.1.3";

    src = fetchegg {
      name = "neo4j";
      version = "0.1.3";
      sha256 = "08fhf2jg30fw7121nj42cqdrx28krknj1dhidrgscjf0hsidwp0c";
    };

    buildInputs = [
      alist-lib
      http-client
      intarweb
      json
      matchable
      medea
      setup-helper
      uri-common
    ];
  };

  netstring = eggDerivation {
    name = "netstring-0.0.4";

    src = fetchegg {
      name = "netstring";
      version = "0.0.4";
      sha256 = "0xkla4h303xbfaz2sqkifw4q3cgbwlr13ny340j0lp9l65amjl8k";
    };

    buildInputs = [
      
    ];
  };

  neurolucida = eggDerivation {
    name = "neurolucida-1.15";

    src = fetchegg {
      name = "neurolucida";
      version = "1.15";
      sha256 = "15dmxkk4ksyvl1j17gcc7jwkz8hr7y7fd63hy2i28bvlg8x7wjbl";
    };

    buildInputs = [
      typeclass
      sxml-transforms
      sxpath
      ssax
      getopt-long
      digraph
      iset
      format-graph
      kd-tree
    ];
  };

  neuromorpho = eggDerivation {
    name = "neuromorpho-1.12";

    src = fetchegg {
      name = "neuromorpho";
      version = "1.12";
      sha256 = "0zjcz2im26a86wsw0ck33ky76ajrv3jadfck3qgziv3fyhidv4a0";
    };

    buildInputs = [
      regex
      matchable
      html-parser
      sxml-transforms
      sxpath
      uri-generic
      getopt-long
    ];
  };

  noise = eggDerivation {
    name = "noise-0.1.3";

    src = fetchegg {
      name = "noise";
      version = "0.1.3";
      sha256 = "1g5zm5c04y5hp086kvzdnif211yp9ykw60vniy03csl2l97zw9ig";
    };

    buildInputs = [
      glls
    ];
  };

  nomads = eggDerivation {
    name = "nomads-1.6";

    src = fetchegg {
      name = "nomads";
      version = "1.6";
      sha256 = "1hv6a4z03rh5a4d73nas6zr2l96qx034vhxd8gkg3cz3lb0davz9";
    };

    buildInputs = [
      defstruct
      sql-de-lite
      postgresql
      filepath
      args
      fmt
      simple-configuration
    ];
  };

  nondeterminism = eggDerivation {
    name = "nondeterminism-1.2";

    src = fetchegg {
      name = "nondeterminism";
      version = "1.2";
      sha256 = "197az1gv5ibwxv3yj1na74ilqfwklzp3wxln6xsb90ydxm48m2ai";
    };

    buildInputs = [
      setup-helper
      miscmacros
      check-errors
      condition-utils
    ];
  };

  npdiff = eggDerivation {
    name = "npdiff-1.16";

    src = fetchegg {
      name = "npdiff";
      version = "1.16";
      sha256 = "0069yqahlwf09pwwl7n6a4802d4k8kqfhg0frwkldvnjpys1vigz";
    };

    buildInputs = [
      datatype
    ];
  };

  nrepl = eggDerivation {
    name = "nrepl-0.1";

    src = fetchegg {
      name = "nrepl";
      version = "0.1";
      sha256 = "0zn8hq6idqzqd9jp2bmv7md2z1f6c41yb2ym7vdpb2rzagvbc6b2";
    };

    buildInputs = [
      
    ];
  };

  null = eggDerivation {
    name = "null-0.1";

    src = fetchegg {
      name = "null";
      version = "0.1";
      sha256 = "11rs7zsyly457qc1h0msczh4z10iq3kbg4jdizlfppv7k8ycy66k";
    };

    buildInputs = [
      
    ];
  };

  number-limits = eggDerivation {
    name = "number-limits-2.0.0";

    src = fetchegg {
      name = "number-limits";
      version = "2.0.0";
      sha256 = "1xdfky62z7z42hi2dc135glqpj9qnmbz57qx0k6x80g4y89nrr3c";
    };

    buildInputs = [
      setup-helper
    ];
  };

  numbers = eggDerivation {
    name = "numbers-3.1";

    src = fetchegg {
      name = "numbers";
      version = "3.1";
      sha256 = "0gpy61gj9nr7q3cl6n2f995qr2vmb01mybbp9pmsypbvz2hb2gky";
    };

    buildInputs = [
      
    ];
  };

  numspell = eggDerivation {
    name = "numspell-0.5";

    src = fetchegg {
      name = "numspell";
      version = "0.5";
      sha256 = "09gbn8nrrw3nq6x2psd5rpx5fn2pvc1w3q5f9xixr9crhqym5x97";
    };

    buildInputs = [
      numbers
    ];
  };

  oauth = eggDerivation {
    name = "oauth-0.1";

    src = fetchegg {
      name = "oauth";
      version = "0.1";
      sha256 = "03rk5fsam27bs64hp75y2b79j4ysf8k419h2l972bnfb65salbw8";
    };

    buildInputs = [
      uri-common
      intarweb
      http-client
    ];
  };

  objc = eggDerivation {
    name = "objc-0.5.1";

    src = fetchegg {
      name = "objc";
      version = "0.5.1";
      sha256 = "01xy2wgphvgnql0rp6kan6jv9wag8k97c2wbzcz2s9ddpplf38jn";
    };

    buildInputs = [
      easyffi
      foreigners
    ];
  };

  object-graph = eggDerivation {
    name = "object-graph-1.2";

    src = fetchegg {
      name = "object-graph";
      version = "1.2";
      sha256 = "07pi78hkic99sl75dpd9h7sb9x8x1cng6k0j7j33qc1j3y95ad5k";
    };

    buildInputs = [
      
    ];
  };

  oblist = eggDerivation {
    name = "oblist-1.2";

    src = fetchegg {
      name = "oblist";
      version = "1.2";
      sha256 = "03v7gy2sdrcc3hl533q7irlgkz8iib0g069qnshvqs16vrdgd1n2";
    };

    buildInputs = [
      regex
    ];
  };

  octave = eggDerivation {
    name = "octave-0.4";

    src = fetchegg {
      name = "octave";
      version = "0.4";
      sha256 = "05njcyrlyj9ssvxjd6bfb77dxiwqigzf02x8lqyljfclnv7vsppz";
    };

    buildInputs = [
      
    ];
  };

  openal = eggDerivation {
    name = "openal-0.8";

    src = fetchegg {
      name = "openal";
      version = "0.8";
      sha256 = "0s5ra32bf60vwrjl2i512yx46m2n2iy8n1a66hkd1w85yri1mvxh";
    };

    buildInputs = [
      easyffi
      make
    ];
  };

  opengl = eggDerivation {
    name = "opengl-1.20";

    src = fetchegg {
      name = "opengl";
      version = "1.20";
      sha256 = "0a6z5yhykyhfs6mw73acq37ihi8kphzf4a3a8jcflxl365ck9gpc";
    };

    buildInputs = [
      silex
      easyffi
      make
      pkgs.mesa_glu
    ];
  };

  opengl-glew = eggDerivation {
    name = "opengl-glew-0.9.1";

    src = fetchegg {
      name = "opengl-glew";
      version = "0.9.1";
      sha256 = "0naw6mp57bibc6irg3h8024hbvczxbplic58mxmhin5ag6cgql0j";
    };

    buildInputs = [
      make
      bind
      pkgs.glew
    ];
  };

  openssl = eggDerivation {
    name = "openssl-1.6.4";

    src = fetchegg {
      name = "openssl";
      version = "1.6.4";
      sha256 = "08ilgzxj6fx5fns6ipavyqjxpkcd50jl2g59dzi068yvcwrav1yb";
    };

    buildInputs = [
      pkgs.openssl
    ];
  };

  operations = eggDerivation {
    name = "operations-0.5";

    src = fetchegg {
      name = "operations";
      version = "0.5";
      sha256 = "1idphgf3svzyi469n7kcr5nc0w0cbc67kc1k7x13bvjghw8qcihw";
    };

    buildInputs = [
      
    ];
  };

  options = eggDerivation {
    name = "options-0.2";

    src = fetchegg {
      name = "options";
      version = "0.2";
      sha256 = "0cdcynzh96f8n0nxgal436428ca3mlazpipm34mb45p244q6an5v";
    };

    buildInputs = [
      datatype
    ];
  };

  osxattr = eggDerivation {
    name = "osxattr-0.1";

    src = fetchegg {
      name = "osxattr";
      version = "0.1";
      sha256 = "1dcxzs4wdwhs5905cdbvjka7zh5vssadmsan5if2sqdvs8mi2crm";
    };

    buildInputs = [
      hfs-plus
      base64
      matchable
      srfi-37
    ];
  };

  packedobjects = eggDerivation {
    name = "packedobjects-0.78";

    src = fetchegg {
      name = "packedobjects";
      version = "0.78";
      sha256 = "0wl88v6l0wsbqms9r650y05shq8vwy3dqhzrqf3ddrbdqwxl1a71";
    };

    buildInputs = [
      
    ];
  };

  packrat = eggDerivation {
    name = "packrat-1.4";

    src = fetchegg {
      name = "packrat";
      version = "1.4";
      sha256 = "1x1d7kvj44nz9hv4naig077f70m3j20yxv39279j36306ym6xc02";
    };

    buildInputs = [
      
    ];
  };

  parametric-curve = eggDerivation {
    name = "parametric-curve-1.12";

    src = fetchegg {
      name = "parametric-curve";
      version = "1.12";
      sha256 = "1m0iglhfkcidy7lj4dwhljqgjinhbvsgnn0m2z28aznwfvmrf54r";
    };

    buildInputs = [
      bvsp-spline
    ];
  };

  parley = eggDerivation {
    name = "parley-0.9";

    src = fetchegg {
      name = "parley";
      version = "0.9";
      sha256 = "08finxxs2flsprqbi32s1fhpw1xvpq7xw1zmkifc9q7cjjsda6zb";
    };

    buildInputs = [
      stty
      srfi-71
      miscmacros
    ];
  };

  pastiche = eggDerivation {
    name = "pastiche-0.22";

    src = fetchegg {
      name = "pastiche";
      version = "0.22";
      sha256 = "1xw0igx2yq7mvm1b87wv102l0gifdckixsazyzfb7cp851dy5arw";
    };

    buildInputs = [
      awful
      awful-sql-de-lite
      simple-sha1
      intarweb
      html-parser
      colorize
      miscmacros
      utf8
    ];
  };

  patch = eggDerivation {
    name = "patch-1.14";

    src = fetchegg {
      name = "patch";
      version = "1.14";
      sha256 = "18llvs0lsvkq1haxvmb453ac9kyv9bvq2c56d5nb9ncngbcadh6h";
    };

    buildInputs = [
      regex
    ];
  };

  pathfinder = eggDerivation {
    name = "pathfinder-0.2";

    src = fetchegg {
      name = "pathfinder";
      version = "0.2";
      sha256 = "024s5nnzxfrwd2sa6x84bwkc9shfmp70847vavna36q3riljvywp";
    };

    buildInputs = [
      regex
      posix-extras
    ];
  };

  pathname-expand = eggDerivation {
    name = "pathname-expand-0.1";

    src = fetchegg {
      name = "pathname-expand";
      version = "0.1";
      sha256 = "14llya7l04z49xpi3iylk8aglrw968vy304ymavhhqlyzmzwkx3g";
    };

    buildInputs = [
      
    ];
  };

  pdf = eggDerivation {
    name = "pdf-1.0.3";

    src = fetchegg {
      name = "pdf";
      version = "1.0.3";
      sha256 = "0pn24z8i76an45g7s8lcqmnldfdvp3xd8ikvfdfjbkv7pwahv3pr";
    };

    buildInputs = [
      format
      regex
    ];
  };

  peep = eggDerivation {
    name = "peep-0.4.1";

    src = fetchegg {
      name = "peep";
      version = "0.4.1";
      sha256 = "165117lzxdpcqsrajfmcqb62xja3xq6z4grfwp3n08zzmhqml0jb";
    };

    buildInputs = [
      dissector
    ];
  };

  persistent-hash-map = eggDerivation {
    name = "persistent-hash-map-0.0.5";

    src = fetchegg {
      name = "persistent-hash-map";
      version = "0.0.5";
      sha256 = "129xfjz2rw052hh5pxvrkagwq0ai7kjazdgylc09smz79hyjw4vn";
    };

    buildInputs = [
      fast-generic
      clojurian
      typed-records
    ];
  };

  phoghorn = eggDerivation {
    name = "phoghorn-2.3";

    src = fetchegg {
      name = "phoghorn";
      version = "2.3";
      sha256 = "19q5f43rky93z0paap3dkfdk5gcwvanxy8xl8h9yd3lshqpkd2fh";
    };

    buildInputs = [
      spiffy
      uri-common
      epeg
      imlib2
      sxml-transforms
    ];
  };

  phricken = eggDerivation {
    name = "phricken-1.1";

    src = fetchegg {
      name = "phricken";
      version = "1.1";
      sha256 = "0iya7jb25gfi2fpdzix1bsn033ipy0f7qd2gh4sfq30f66m3x8a8";
    };

    buildInputs = [
      gopher
      uri-generic
      tcp-server
      tcp6
      matchable
      regex
    ];
  };

  physfs = eggDerivation {
    name = "physfs-2.2";

    src = fetchegg {
      name = "physfs";
      version = "2.2";
      sha256 = "1z95sr3acldjcv5wmqbhyiiq5fc7g0imv3r2yz24382djfrpzsys";
    };

    buildInputs = [
      bind
      miscmacros
    ];
  };

  picnic = eggDerivation {
    name = "picnic-1.3";

    src = fetchegg {
      name = "picnic";
      version = "1.3";
      sha256 = "0dgvq4xkq522w8y2rj03c6g1whcp115h5wzlnkpkk8l1xqfvrb56";
    };

    buildInputs = [
      make
      matchable
      iexpr
      datatype
      vector-lib
      digraph
      graph-bfs
      graph-cycles
      mathh
      varsubst
      lalr
      ersatz
      getopt-long
      typeclass
      kd-tree
      parametric-curve
      bvsp-spline
      random-mtzig
      mpi
      srfi-63
    ];
  };

  pilgrim = eggDerivation {
    name = "pilgrim-0.0.3";

    src = fetchegg {
      name = "pilgrim";
      version = "0.0.3";
      sha256 = "07b9f35a8bkvdx0sff31sprl7hji1fzr5y5gp235c5807y50184g";
    };

    buildInputs = [
      
    ];
  };

  plot = eggDerivation {
    name = "plot-1.1";

    src = fetchegg {
      name = "plot";
      version = "1.1";
      sha256 = "07w64skf42mjv83yx62rn4qbsam8r9xhdgj3brd2lh4s98ga6fs0";
    };

    buildInputs = [
      datatype
      matchable
    ];
  };

  ploticus = eggDerivation {
    name = "ploticus-1.3";

    src = fetchegg {
      name = "ploticus";
      version = "1.3";
      sha256 = "1ll9xlwq568jglrbgkgxw733jqijl4jr1gr1294c9d80lnka5f4p";
    };

    buildInputs = [
      
    ];
  };

  pool = eggDerivation {
    name = "pool-0.3";

    src = fetchegg {
      name = "pool";
      version = "0.3";
      sha256 = "1gkz9c2arcdv0kipvlsxicpslb8xsnra7wwyylcv2d1n043xc24d";
    };

    buildInputs = [
      
    ];
  };

  pop3 = eggDerivation {
    name = "pop3-1.5";

    src = fetchegg {
      name = "pop3";
      version = "1.5";
      sha256 = "1qygydx3x8hv22nlbqvpvvkg5gy3d9q6k6vsm5xkx238y6s3l265";
    };

    buildInputs = [
      matchable
      regex
    ];
  };

  posix-extras = eggDerivation {
    name = "posix-extras-0.1.6";

    src = fetchegg {
      name = "posix-extras";
      version = "0.1.6";
      sha256 = "0gnmhn2l0161ham7f8i0lx1ay94ap8l8l7ga4nw9qs86lk024abi";
    };

    buildInputs = [
      
    ];
  };

  posix-semaphore = eggDerivation {
    name = "posix-semaphore-0.5.1";

    src = fetchegg {
      name = "posix-semaphore";
      version = "0.5.1";
      sha256 = "06nhphl1ihwr6f5qqkq4g2z82xv6d4hcqzp5jsxkf2vjikdv3bax";
    };

    buildInputs = [
      
    ];
  };

  posix-shm = eggDerivation {
    name = "posix-shm-1.1";

    src = fetchegg {
      name = "posix-shm";
      version = "1.1";
      sha256 = "0bp88xbyprd3bbvc7xhhcqnn3gyxflfc60h7j1g3wygacwzc92z3";
    };

    buildInputs = [
      
    ];
  };

  posix-utils = eggDerivation {
    name = "posix-utils-1.0.0";

    src = fetchegg {
      name = "posix-utils";
      version = "1.0.0";
      sha256 = "183hg3kip7p7adn0sid3ia7vgk4pqka5hjgrlv7rz8bv7y1vy1i1";
    };

    buildInputs = [
      setup-helper
    ];
  };

  postgresql = eggDerivation {
    name = "postgresql-3.9.2";

    src = fetchegg {
      name = "postgresql";
      version = "3.9.2";
      sha256 = "0ylglbv2arjrwz5gwnwgp2bgcy8r8vs8f4wan6j95ymvc4sr4qlc";
    };

    buildInputs = [
      sql-null
      pkgs.postgresql
    ];
  };

  prcc = eggDerivation {
    name = "prcc-0.1";

    src = fetchegg {
      name = "prcc";
      version = "0.1";
      sha256 = "17lgk9kqs7zkmrbwd4p0nydwmqhnin0g4phmkwx0ijyr9pi7aks3";
    };

    buildInputs = [
      stack
      srfi-41
    ];
  };

  probdist = eggDerivation {
    name = "probdist-1.7";

    src = fetchegg {
      name = "probdist";
      version = "1.7";
      sha256 = "0pngl0z3pk2w2jmizazvyd143kd8ds6qyv23wxy9882iv1qmgbf4";
    };

    buildInputs = [
      datatype
      matchable
      srfi-4-utils
      blas
      matrix-utils
      atlas-lapack
    ];
  };

  proccpuinfo = eggDerivation {
    name = "proccpuinfo-0.1";

    src = fetchegg {
      name = "proccpuinfo";
      version = "0.1";
      sha256 = "1ghnpz6325m4rymsy2gz5xwhyy6jib3ak6ly45dirnj9ljbf54vv";
    };

    buildInputs = [
      
    ];
  };

  procedure-decoration = eggDerivation {
    name = "procedure-decoration-2.0.2";

    src = fetchegg {
      name = "procedure-decoration";
      version = "2.0.2";
      sha256 = "1j6q97gd6cpnxi5srblzm16mg6bhfwf4nb60p0qa4f9nlb9wmgv2";
    };

    buildInputs = [
      setup-helper
      check-errors
    ];
  };

  progress-indicators = eggDerivation {
    name = "progress-indicators-0.4";

    src = fetchegg {
      name = "progress-indicators";
      version = "0.4";
      sha256 = "0m3sfbcxrkj1mq70a2k3b8pzyd87knwrd3l3yv5m52jvghb9a410";
    };

    buildInputs = [
      defstruct
    ];
  };

  prometheus = eggDerivation {
    name = "prometheus-2.0.2";

    src = fetchegg {
      name = "prometheus";
      version = "2.0.2";
      sha256 = "18wk5c4pf3qw7sxi7lssrp7ghrifgck2d73vw4xjvx42m4n9paaj";
    };

    buildInputs = [
      s48-modules
    ];
  };

  protobj = eggDerivation {
    name = "protobj-0.4";

    src = fetchegg {
      name = "protobj";
      version = "0.4";
      sha256 = "00jfzbcfnxdcka87gxbf10pbvahcp7bfidzxp9hbbm3svvf4nrq4";
    };

    buildInputs = [
      
    ];
  };

  protobuf = eggDerivation {
    name = "protobuf-1.1.2";

    src = fetchegg {
      name = "protobuf";
      version = "1.1.2";
      sha256 = "1ahh46rpl28i2d642db18p1wrcpi5zdjifcz0dav1sn0vh82vs54";
    };

    buildInputs = [
      srfi-42
      srfi-4-comprehensions
      srfi-99
      numbers
    ];
  };

  protolk = eggDerivation {
    name = "protolk-0.5";

    src = fetchegg {
      name = "protolk";
      version = "0.5";
      sha256 = "01s88v0vs269gn8mjvzjqvlr79lpvx5pj0zf5fnzs2w48znl8gm5";
    };

    buildInputs = [
      
    ];
  };

  pseudo-meta-egg-info = eggDerivation {
    name = "pseudo-meta-egg-info-1.0";

    src = fetchegg {
      name = "pseudo-meta-egg-info";
      version = "1.0";
      sha256 = "043vmhw99zdg7qld366gkg5f177q4i3ky50snqryvpdf97c03w6y";
    };

    buildInputs = [
      spiffy
      uri-common
      svn-client
    ];
  };

  pstk = eggDerivation {
    name = "pstk-1.2.2";

    src = fetchegg {
      name = "pstk";
      version = "1.2.2";
      sha256 = "0ssva52h71p8s0knry3s3fmpk0anky87ljwhzf7l1jc44517sfv2";
    };

    buildInputs = [
      
    ];
  };

  pty = eggDerivation {
    name = "pty-1.7";

    src = fetchegg {
      name = "pty";
      version = "1.7";
      sha256 = "0488ighgf8a6s2fvgrsfrmm9anx1k9ga6bripa58ignrxllxwkaa";
    };

    buildInputs = [
      
    ];
  };

  pyffi = eggDerivation {
    name = "pyffi-3.1";

    src = fetchegg {
      name = "pyffi";
      version = "3.1";
      sha256 = "0mq3h9hiiprxyygvvpvcmadgsra638gj5c8qnh124g2j2z9i9j19";
    };

    buildInputs = [
      bind
      utf8
    ];
  };

  qobischeme-ui = eggDerivation {
    name = "qobischeme-ui-1.1";

    src = fetchegg {
      name = "qobischeme-ui";
      version = "1.1";
      sha256 = "1whbmswr5q9ajrwpzbizhb5xd4d5d2xpb5f2p1xqqvqmwlp7hzrq";
    };

    buildInputs = [
      setup-helper
      miscmacros
      check-errors
      condition-utils
      define-structure
      nondeterminism
      linear-algebra
      image-processing
      xlib
      scheme2c-compatibility
      traversal
    ];
  };

  qt = eggDerivation {
    name = "qt-0.100.3";

    src = fetchegg {
      name = "qt";
      version = "0.100.3";
      sha256 = "1fx8ip66w0x260b7byf39p1viqkg3wy8am7q6r51bi3vw1xjwf43";
    };

    buildInputs = [
      easyffi
      protobj
      matchable
      miscmacros
    ];
  };

  qt-light = eggDerivation {
    name = "qt-light-0.99";

    src = fetchegg {
      name = "qt-light";
      version = "0.99";
      sha256 = "0zrjm0a0cm98qfdb771r4kg60vdkrq3kf16sixf8af77nrknd1cp";
    };

    buildInputs = [
      easyffi
      protobj
      matchable
      miscmacros
    ];
  };

  quaternions = eggDerivation {
    name = "quaternions-1.0";

    src = fetchegg {
      name = "quaternions";
      version = "1.0";
      sha256 = "18w5g3kkblb3wnd66lyqk895pvps9pagwwkm2fsjc2jcqyxgc2rm";
    };

    buildInputs = [
      numbers
    ];
  };

  qwiki = eggDerivation {
    name = "qwiki-1.6";

    src = fetchegg {
      name = "qwiki";
      version = "1.6";
      sha256 = "0g429mw272snpqmbaz96zkq27a24p94lh7x5wk45qncff81insxl";
    };

    buildInputs = [
      intarweb
      uri-common
      spiffy
      doctype
      sxml-transforms
      multidoc
      svn-client
      estraier-client
      sxpath
      message-digest
      sha1
      svnwiki-sxml
      html-parser
      colorize
    ];
  };

  r7rs = eggDerivation {
    name = "r7rs-0.0.1";

    src = fetchegg {
      name = "r7rs";
      version = "0.0.1";
      sha256 = "1rs8zy3qbdavr2s78yksn7msv44y0v4ikqgz95whapnp1a1j0r91";
    };

    buildInputs = [
      matchable
      make
      numbers
    ];
  };

  random-access-lists = eggDerivation {
    name = "random-access-lists-0.1.2";

    src = fetchegg {
      name = "random-access-lists";
      version = "0.1.2";
      sha256 = "16533mc28rxq4sac48vf6g43fnxvzwvdfy31d490sxwiamrmcvcd";
    };

    buildInputs = [
      dbc
    ];
  };

  random-bsd = eggDerivation {
    name = "random-bsd-0.2";

    src = fetchegg {
      name = "random-bsd";
      version = "0.2";
      sha256 = "1dhalcjpxp6rg34pxiygqq0zzwhlq6d89ag6pzvlzkxd9156pf0v";
    };

    buildInputs = [
      
    ];
  };

  random-mtzig = eggDerivation {
    name = "random-mtzig-3.3";

    src = fetchegg {
      name = "random-mtzig";
      version = "3.3";
      sha256 = "01q74c1psmcdidjgdp37hxr4b3zmzm7ki3ybfy13giaxlvxn2vb3";
    };

    buildInputs = [
      bind
    ];
  };

  random-swb = eggDerivation {
    name = "random-swb-1.12";

    src = fetchegg {
      name = "random-swb";
      version = "1.12";
      sha256 = "0y66v1gn1c120ci32rwndml36y9sm0c413wqdr9j3fgkz2a2gqpp";
    };

    buildInputs = [
      matchable
    ];
  };

  random-test = eggDerivation {
    name = "random-test-1.9";

    src = fetchegg {
      name = "random-test";
      version = "1.9";
      sha256 = "181cgngalgylh831bmzpmip7604v87llvwj5zgshppk9xx03mk3p";
    };

    buildInputs = [
      
    ];
  };

  raspberry-pi-gpio = eggDerivation {
    name = "raspberry-pi-gpio-1.0.0";

    src = fetchegg {
      name = "raspberry-pi-gpio";
      version = "1.0.0";
      sha256 = "10jh7wj1yp3svf3nn621886i2difhzzvfkfsl13v6xg1af5cl64y";
    };

    buildInputs = [
      concurrent-native-callbacks
      mailbox-threads
    ];
  };

  rb-tree = eggDerivation {
    name = "rb-tree-5.0";

    src = fetchegg {
      name = "rb-tree";
      version = "5.0";
      sha256 = "1gkhb8001q207azqb498hw6ygjp6lx3d8y59dlq78vqbc4rk6mkr";
    };

    buildInputs = [
      datatype
      matchable
      typeclass
    ];
  };

  readline = eggDerivation {
    name = "readline-1.993";

    src = fetchegg {
      name = "readline";
      version = "1.993";
      sha256 = "01fncidmax5csh9yxniwjjy01aji7h7bifyqrcn26kkpvp3vk9m7";
    };

    buildInputs = [
      
    ];
  };

  record-variants = eggDerivation {
    name = "record-variants-0.5.1";

    src = fetchegg {
      name = "record-variants";
      version = "0.5.1";
      sha256 = "15wgysxkm8m4hx9nhhw9akchzipdnqc7yj3qd3zn0z7sxg4sld1h";
    };

    buildInputs = [
      
    ];
  };

  records = eggDerivation {
    name = "records-1.3";

    src = fetchegg {
      name = "records";
      version = "1.3";
      sha256 = "1pywhg768z6knyynwx99wjs878zfaczrpg77z4qf52wdp28s1hff";
    };

    buildInputs = [
      
    ];
  };

  redis = eggDerivation {
    name = "redis-2.0";

    src = fetchegg {
      name = "redis";
      version = "2.0";
      sha256 = "1xfa9d3r4hznfb982dzqmpc48bz4y4325dh2hid50bamkwhvqwc6";
    };

    buildInputs = [
      setup-helper
      miscmacros
      check-errors
      condition-utils
      bind
      easyffi
      defstruct
    ];
  };

  redis-client = eggDerivation {
    name = "redis-client-0.8";

    src = fetchegg {
      name = "redis-client";
      version = "0.8";
      sha256 = "1ajqs242ihmvk64xhzpbjl0jmar23x5dchd0yk6a0ld4v566saci";
    };

    buildInputs = [
      socket
    ];
  };

  refdb = eggDerivation {
    name = "refdb-1.01";

    src = fetchegg {
      name = "refdb";
      version = "1.01";
      sha256 = "0ji84kjwsil4mmhdw4zmsavkgq32if0aqg6cm9bd3xc3q62n533j";
    };

    buildInputs = [
      ssax
      sxml-serializer
      sxml-modifications
      regex
      regex-case
      json
      csv
    ];
  };

  regex = eggDerivation {
    name = "regex-1.0";

    src = fetchegg {
      name = "regex";
      version = "1.0";
      sha256 = "1z9bh7xvab6h5cdlsz8jk02pv5py1i6ryqarbcs3wdgkkjgmmkif";
    };

    buildInputs = [
      
    ];
  };

  regex-case = eggDerivation {
    name = "regex-case-1.2";

    src = fetchegg {
      name = "regex-case";
      version = "1.2";
      sha256 = "1dj8jfxpvz5xq8phpn1v7k9mrsrnw2myjimisy1vdb5hvwn2bwc2";
    };

    buildInputs = [
      regex
    ];
  };

  regex-literals = eggDerivation {
    name = "regex-literals-1.0.4";

    src = fetchegg {
      name = "regex-literals";
      version = "1.0.4";
      sha256 = "03w7iiklv9gkxdpc2gvfk0qrhskp22dir75iqf7fh0rnvhrpd29h";
    };

    buildInputs = [
      regex
    ];
  };

  remote-mailbox = eggDerivation {
    name = "remote-mailbox-2.0.2";

    src = fetchegg {
      name = "remote-mailbox";
      version = "2.0.2";
      sha256 = "0hf8aj7xv1xahs6lv5vv1zvzwp4nis88vcp6a5cm5j3g5b506h4n";
    };

    buildInputs = [
      setup-helper
      tcp-server
      s11n
      mailbox
      miscmacros
      lookup-table
      check-errors
      synch
    ];
  };

  remote-mailbox-threads = eggDerivation {
    name = "remote-mailbox-threads-0.0.3";

    src = fetchegg {
      name = "remote-mailbox-threads";
      version = "0.0.3";
      sha256 = "0720n11ykdr9rhm08xlccfqq1ybr73i70c48mbfmldi76yvb8hh0";
    };

    buildInputs = [
      zmq
      mailbox-threads
    ];
  };

  rest-bind = eggDerivation {
    name = "rest-bind-0.5";

    src = fetchegg {
      name = "rest-bind";
      version = "0.5";
      sha256 = "1bh7g6kdh1d490szh9nf2w7c7qaj82pi9znc87gjj22bp8wsj9g2";
    };

    buildInputs = [
      intarweb
      uri-common
    ];
  };

  rfb = eggDerivation {
    name = "rfb-0.3";

    src = fetchegg {
      name = "rfb";
      version = "0.3";
      sha256 = "0fmpj00l47whl1fmq8waamyygwz56aijy7r718h6w0q9y8ii2kbd";
    };

    buildInputs = [
      matchable
      defstruct
      regex-case
      miscmacros
    ];
  };

  rfc3339 = eggDerivation {
    name = "rfc3339-0.1.1";

    src = fetchegg {
      name = "rfc3339";
      version = "0.1.1";
      sha256 = "1yq0byvckni6fvlc6l4wjsmy5hsvksvkl46yp85cg8hc43wpn7ql";
    };

    buildInputs = [
      matchable
      regex
    ];
  };

  rfc822 = eggDerivation {
    name = "rfc822-1.7";

    src = fetchegg {
      name = "rfc822";
      version = "1.7";
      sha256 = "0lfzvkva8bg274l077hhxwgdfiqm12aha0229bjiqg0v7i2bkx7z";
    };

    buildInputs = [
      matchable
      regex
    ];
  };

  ripemd = eggDerivation {
    name = "ripemd-1.1.0";

    src = fetchegg {
      name = "ripemd";
      version = "1.1.0";
      sha256 = "11i127rzfcwsf8dy0rwmxjxcx4fx07q4y7wxh4wcrh9sgxyhrsdj";
    };

    buildInputs = [
      setup-helper
      message-digest
    ];
  };

  rope = eggDerivation {
    name = "rope-0.0.5";

    src = fetchegg {
      name = "rope";
      version = "0.0.5";
      sha256 = "0h0nv2ak0029yjz1mpq9a1yr1yfb9ad2ar5ih4kz62gcac06mjng";
    };

    buildInputs = [
      
    ];
  };

  rpc = eggDerivation {
    name = "rpc-1.1.2";

    src = fetchegg {
      name = "rpc";
      version = "1.1.2";
      sha256 = "1kkg344d3z52djxvk902i6l614pplp9sjrwq7bpk4pmmwgw9glfk";
    };

    buildInputs = [
      tcp-server
      s11n
      matchable
    ];
  };

  rss = eggDerivation {
    name = "rss-1.6";

    src = fetchegg {
      name = "rss";
      version = "1.6";
      sha256 = "1bxm95ad32j1khb1nzq48bhfagbigqz88idq7xjx6r5azllz6dly";
    };

    buildInputs = [
      ssax
      matchable
    ];
  };

  s = eggDerivation {
    name = "s-1.0";

    src = fetchegg {
      name = "s";
      version = "1.0";
      sha256 = "0h55g6z0b0n15mmq372baz7923wh5s16zw65w1ygrfdgsnswl3rg";
    };

    buildInputs = [
      regex
    ];
  };

  s11n = eggDerivation {
    name = "s11n-0.9.6";

    src = fetchegg {
      name = "s11n";
      version = "0.9.6";
      sha256 = "16dvivq79wwckbsvc9x9cmkdjmdaliqms549vhhz0j2dvgkqqjnd";
    };

    buildInputs = [
      matchable
    ];
  };

  s48-modules = eggDerivation {
    name = "s48-modules-0.4.1";

    src = fetchegg {
      name = "s48-modules";
      version = "0.4.1";
      sha256 = "013jni0sn51nl5m28cqd5gz6adzffvqwlml4hkapqv5ccb0pz4l3";
    };

    buildInputs = [
      
    ];
  };

  salmonella = eggDerivation {
    name = "salmonella-2.7";

    src = fetchegg {
      name = "salmonella";
      version = "2.7";
      sha256 = "0gnz09wq2g6qpl4jigy76xvx9bc6ysvb2vjxfy1mx4m2rj78h8lv";
    };

    buildInputs = [
      
    ];
  };

  salmonella-diff = eggDerivation {
    name = "salmonella-diff-1";

    src = fetchegg {
      name = "salmonella-diff";
      version = "1";
      sha256 = "1mgsdxvp0qln3svfs99gafa0s5s0xmh0jm7dd55hzg7n0y5wl5dw";
    };

    buildInputs = [
      sxml-transforms
      regex
      salmonella
    ];
  };

  salmonella-feeds = eggDerivation {
    name = "salmonella-feeds-0";

    src = fetchegg {
      name = "salmonella-feeds";
      version = "0";
      sha256 = "0lvy5rgxzk7d4mhmwlvli2py2ixniv83adsb1459svmcfc36wqxx";
    };

    buildInputs = [
      atom
      rfc3339
      salmonella
    ];
  };

  salmonella-html-report = eggDerivation {
    name = "salmonella-html-report-1.6";

    src = fetchegg {
      name = "salmonella-html-report";
      version = "1.6";
      sha256 = "11pgfq0b1rffl5p1j82ndc8abavhq70w3vdjy8gzf7zppnlbz1pv";
    };

    buildInputs = [
      sxml-transforms
      regex
      salmonella
    ];
  };

  sandbox = eggDerivation {
    name = "sandbox-1.8";

    src = fetchegg {
      name = "sandbox";
      version = "1.8";
      sha256 = "1gqnb4jpdb3qzvfnckslwxl6c4q75sz40lwxfw8zwq4p866pqivl";
    };

    buildInputs = [
      matchable
      defstruct
    ];
  };

  sassy = eggDerivation {
    name = "sassy-0.2.4";

    src = fetchegg {
      name = "sassy";
      version = "0.2.4";
      sha256 = "1xa4j68b9baj1q7iwxm0kxy823c5k65nk17lsi28sp0qk7p4zasj";
    };

    buildInputs = [
      numbers
    ];
  };

  scbib = eggDerivation {
    name = "scbib-1.5";

    src = fetchegg {
      name = "scbib";
      version = "1.5";
      sha256 = "1as34rrj8yj0m9a34vg15snpc6kansrcwsh6drp8s2ilzkwimmnk";
    };

    buildInputs = [
      regex
      datatype
    ];
  };

  schelog = eggDerivation {
    name = "schelog-3.4";

    src = fetchegg {
      name = "schelog";
      version = "3.4";
      sha256 = "07w1nbz80y06c238cfhh1sldgmlg6l6nwdgqyv0lkk2a22gqdic4";
    };

    buildInputs = [
      
    ];
  };

  schematic = eggDerivation {
    name = "schematic-0.1.4";

    src = fetchegg {
      name = "schematic";
      version = "0.1.4";
      sha256 = "020iw0101ww3digrlai1w1c01j783yyqsjlvl5izpjx2g8hcn10h";
    };

    buildInputs = [
      r7rs
      fmt
      colorize
      sxml-transforms
    ];
  };

  scheme0-pe = eggDerivation {
    name = "scheme0-pe-1.0";

    src = fetchegg {
      name = "scheme0-pe";
      version = "1.0";
      sha256 = "0n6apc2v5ln3l19pg1jiaza82rl7b88iw0hv448r63dyxykk977c";
    };

    buildInputs = [
      
    ];
  };

  scheme2c-compatibility = eggDerivation {
    name = "scheme2c-compatibility-1.7";

    src = fetchegg {
      name = "scheme2c-compatibility";
      version = "1.7";
      sha256 = "0kxmhxrw5ladqk42rjzh6rwbwfn24m1niqfalq3vqnccg6ws6sw1";
    };

    buildInputs = [
      setup-helper
      miscmacros
      check-errors
      condition-utils
      foreigners
      xlib
      traversal
    ];
  };

  schemeweb = eggDerivation {
    name = "schemeweb-0.2";

    src = fetchegg {
      name = "schemeweb";
      version = "0.2";
      sha256 = "160a7g7mr10dk6v6agwy2j8ffs5cqvx5xsjmlkdgpx6nf6d0asdj";
    };

    buildInputs = [
      
    ];
  };

  scron = eggDerivation {
    name = "scron-0.2";

    src = fetchegg {
      name = "scron";
      version = "0.2";
      sha256 = "1b1h1953kfsz9cv474znsl4crvshfi2bpyldkhlzlrbgrba6fr22";
    };

    buildInputs = [
      
    ];
  };

  scsh-process = eggDerivation {
    name = "scsh-process-0.4.1";

    src = fetchegg {
      name = "scsh-process";
      version = "0.4.1";
      sha256 = "0wmx1153kql1rxysxfc19kdwq3d7ajspidqppgyiw6kx8ag9jsy9";
    };

    buildInputs = [
      
    ];
  };

  scss = eggDerivation {
    name = "scss-0.5.0";

    src = fetchegg {
      name = "scss";
      version = "0.5.0";
      sha256 = "12pl4asjpj5pjck8w5dbqd857w318xyvyyqwwb5xivs53lz7j1rr";
    };

    buildInputs = [
      matchable
    ];
  };

  sdbm = eggDerivation {
    name = "sdbm-0.1.1";

    src = fetchegg {
      name = "sdbm";
      version = "0.1.1";
      sha256 = "1jlc5yvazglhy2ysc5vr74qqvy1ybw08957hf2468m2hvx0nlv9g";
    };

    buildInputs = [
      
    ];
  };

  sdl = eggDerivation {
    name = "sdl-0.5.7";

    src = fetchegg {
      name = "sdl";
      version = "0.5.7";
      sha256 = "0kr8jd68d1rqix4r77ip8jcv50pwpl1al7zzh6yxqqhpc29q3dni";
    };

    buildInputs = [
      
    ];
  };

  sdl-base = eggDerivation {
    name = "sdl-base-0.1";

    src = fetchegg {
      name = "sdl-base";
      version = "0.1";
      sha256 = "1vcsg7c48ppyjmq7j5d9bjd3bxq5hcm1r7inxyy5b5pvs8vr5363";
    };

    buildInputs = [
      pkgs.SDL
    ];
  };

  sdl-img = eggDerivation {
    name = "sdl-img-0.1";

    src = fetchegg {
      name = "sdl-img";
      version = "0.1";
      sha256 = "0fxdc5mqdxfc6bkcgg5l26m71mhr5xgfcn7966ha9qlkd0nv4c0z";
    };

    buildInputs = [
      sdl-base
    ];
  };

  sdl-mixer = eggDerivation {
    name = "sdl-mixer-0.6";

    src = fetchegg {
      name = "sdl-mixer";
      version = "0.6";
      sha256 = "0x1fhgl354szp5ghrjdxsh2gr9cclh3iagjn98xj2ih1q6xl2p0x";
    };

    buildInputs = [
      
    ];
  };

  sdl-ttf = eggDerivation {
    name = "sdl-ttf-0.1";

    src = fetchegg {
      name = "sdl-ttf";
      version = "0.1";
      sha256 = "159787lhnwm4bjc0vagy2w7b631qcxysmvk5gkl8hqra3jyvz3fj";
    };

    buildInputs = [
      sdl-base
    ];
  };

  sedna = eggDerivation {
    name = "sedna-3.3.55";

    src = fetchegg {
      name = "sedna";
      version = "3.3.55";
      sha256 = "0vczmp97hr9img7gc4nkaghfy2c1pz1cs4zd6r941v026a7q3fj4";
    };

    buildInputs = [
      
    ];
  };

  selenium = eggDerivation {
    name = "selenium-0.6";

    src = fetchegg {
      name = "selenium";
      version = "0.6";
      sha256 = "11pr80z3zvg3awca25anysxvm36w07p79yzjjifj4s0sqg1p40h5";
    };

    buildInputs = [
      http-client
      json
      intarweb
      regex
    ];
  };

  send-grid = eggDerivation {
    name = "send-grid-2";

    src = fetchegg {
      name = "send-grid";
      version = "2";
      sha256 = "1dvn752cmd6fmxxhpcl6fpar0nj5fdflk6p6frl18wc5njnnvsxm";
    };

    buildInputs = [
      http-client
      uri-common
      intarweb
      json
    ];
  };

  sendfile = eggDerivation {
    name = "sendfile-1.7.30";

    src = fetchegg {
      name = "sendfile";
      version = "1.7.30";
      sha256 = "165cdjm24ysvrzrw85cv02mcd0xlscx00bv6rjgya7svqhzbzhhs";
    };

    buildInputs = [
      
    ];
  };

  sequences = eggDerivation {
    name = "sequences-0.6";

    src = fetchegg {
      name = "sequences";
      version = "0.6";
      sha256 = "0h0wwzpvzdmhfanbq8a1yq9zbaxb8iz0r5nax1mm17177qqx2f8p";
    };

    buildInputs = [
      fast-generic
      srfi-42
    ];
  };

  serial = eggDerivation {
    name = "serial-0.7";

    src = fetchegg {
      name = "serial";
      version = "0.7";
      sha256 = "1in8ylk3qxbw8fi8lm86n3ps20s0ngk272yx7sxlqf6lcp8xbm2w";
    };

    buildInputs = [
      
    ];
  };

  server-test = eggDerivation {
    name = "server-test-0.5";

    src = fetchegg {
      name = "server-test";
      version = "0.5";
      sha256 = "1fx1789xz2z6g4y52v0alvg0a792wm3vbklfvk3bzvgpr9k4p98x";
    };

    buildInputs = [
      
    ];
  };

  sets = eggDerivation {
    name = "sets-17015.1";

    src = fetchegg {
      name = "sets";
      version = "17015.1";
      sha256 = "11wq17y7an04bfrd7awakjmyz8x7hsgm7zw7dxirx2ziis02rc56";
    };

    buildInputs = [
      embedded-test
    ];
  };

  setup-helper = eggDerivation {
    name = "setup-helper-1.5.4";

    src = fetchegg {
      name = "setup-helper";
      version = "1.5.4";
      sha256 = "1k644y0md2isdcvazqfm4nyc8rh3dby6b0j3r4na4w8ryspqp6gj";
    };

    buildInputs = [
      
    ];
  };

  setup-helper-cock = eggDerivation {
    name = "setup-helper-cock-0.3";

    src = fetchegg {
      name = "setup-helper-cock";
      version = "0.3";
      sha256 = "1h9nv5172iqczd91z1ybm2biw0xn8anzh0qhpad8rpb0bcdfckgj";
    };

    buildInputs = [
      
    ];
  };

  seulex = eggDerivation {
    name = "seulex-1.1";

    src = fetchegg {
      name = "seulex";
      version = "1.1";
      sha256 = "0ch3a4ajrndggknz94halw7qnxshhba96670n41mfc20swzgm5h4";
    };

    buildInputs = [
      pkgs.gfortran
      pkgs.blas
      pkgs.liblapack
    ];
  };

  sexp-diff = eggDerivation {
    name = "sexp-diff-0.2.1";

    src = fetchegg {
      name = "sexp-diff";
      version = "0.2.1";
      sha256 = "0bpn75vinp3q8rbr3hvl4cggrs7c65r58bsw6w4r1zxm7q74vv9m";
    };

    buildInputs = [
      
    ];
  };

  sfht = eggDerivation {
    name = "sfht-3.0";

    src = fetchegg {
      name = "sfht";
      version = "3.0";
      sha256 = "069iii4z31xssw13igcdlh4n11zcbcwqspm4b5s8zqr84ac6f9nq";
    };

    buildInputs = [
      typeclass
      matchable
      sparse-vectors
    ];
  };

  sha1 = eggDerivation {
    name = "sha1-3.1.0";

    src = fetchegg {
      name = "sha1";
      version = "3.1.0";
      sha256 = "1n84r7raf5kr0r1zpkbfpb0z3412h0gyk44dj65kj8isfxz0sjgd";
    };

    buildInputs = [
      message-digest
    ];
  };

  sha2 = eggDerivation {
    name = "sha2-3.1.0";

    src = fetchegg {
      name = "sha2";
      version = "3.1.0";
      sha256 = "01ch290f2kcv1yv8spjdaqwipl80vvgpqc4divsj3vxckvgkawq2";
    };

    buildInputs = [
      message-digest
    ];
  };

  shell = eggDerivation {
    name = "shell-0.3";

    src = fetchegg {
      name = "shell";
      version = "0.3";
      sha256 = "04l5drrmyf9w3xy38nrs4qk3jrylifndfkpgs8f7zwy2jafph3z4";
    };

    buildInputs = [
      
    ];
  };

  sicp = eggDerivation {
    name = "sicp-0.7.3";

    src = fetchegg {
      name = "sicp";
      version = "0.7.3";
      sha256 = "0dpcp2xh8x6mzw9i44gf6sshg430h51nvscsxlf30q6a0dgfv5d5";
    };

    buildInputs = [
      cock
      htmlprag
      setup-helper
      shell
      token-substitution
    ];
  };

  sigma = eggDerivation {
    name = "sigma-2.4";

    src = fetchegg {
      name = "sigma";
      version = "2.4";
      sha256 = "1avp0k63v7vfp1790giyqx6inyljgvvvam1mjk65b6lsmb44405r";
    };

    buildInputs = [
      regex
      matchable
      sxml-transforms
      utf8
      uri-generic
      fmt
      getopt-long
    ];
  };

  signal-diagram = eggDerivation {
    name = "signal-diagram-4.1";

    src = fetchegg {
      name = "signal-diagram";
      version = "4.1";
      sha256 = "0nzmlzb6c4hkwlkjh5ywmpcrvjssqqs4zgny940c96vdw41pbcb0";
    };

    buildInputs = [
      make
      mathh
      datatype
      flsim
      dyn-vector
    ];
  };

  silex = eggDerivation {
    name = "silex-1.4";

    src = fetchegg {
      name = "silex";
      version = "1.4";
      sha256 = "17x7f07aa3qnay3bhjr7knjivhycs54j97jyv3gjs1h8qnp63g00";
    };

    buildInputs = [
      
    ];
  };

  simple-configuration = eggDerivation {
    name = "simple-configuration-0.3";

    src = fetchegg {
      name = "simple-configuration";
      version = "0.3";
      sha256 = "0d31s5kf53xsfsixrzsz4a5lpaybynl35j4jv94g8p8k4142bk80";
    };

    buildInputs = [
      
    ];
  };

  simple-exceptions = eggDerivation {
    name = "simple-exceptions-0.1";

    src = fetchegg {
      name = "simple-exceptions";
      version = "0.1";
      sha256 = "10b3f403j2x7sfqvrzivbnnf61gvx1cccr2hlp5v8kzypawhsidm";
    };

    buildInputs = [
      
    ];
  };

  simple-graphics = eggDerivation {
    name = "simple-graphics-0.2";

    src = fetchegg {
      name = "simple-graphics";
      version = "0.2";
      sha256 = "1b5phrdvp8nqh9pi3mwbfc57qy7mwmhci5y28936kdl6dqzcvssm";
    };

    buildInputs = [
      doodle
      miscmacros
      parley
    ];
  };

  simple-logging = eggDerivation {
    name = "simple-logging-17005.3";

    src = fetchegg {
      name = "simple-logging";
      version = "17005.3";
      sha256 = "0nljy1r144fncn8vnj4v757xp80j3plx4ra6xj2wf1dl34wxawms";
    };

    buildInputs = [
      format-compiler
    ];
  };

  simple-sha1 = eggDerivation {
    name = "simple-sha1-0.4";

    src = fetchegg {
      name = "simple-sha1";
      version = "0.4";
      sha256 = "0w9cx84i72c3hbx26mh7hvfnmf7vmmz8qs4q26dyfayqy377zs10";
    };

    buildInputs = [
      
    ];
  };

  simple-tests = eggDerivation {
    name = "simple-tests-2.2";

    src = fetchegg {
      name = "simple-tests";
      version = "2.2";
      sha256 = "0z8by73i390qinsnxw2ckbakgfz2cawrd9j0afpa9cgag0fbcd5n";
    };

    buildInputs = [
      
    ];
  };

  simple-units = eggDerivation {
    name = "simple-units-1.2.5";

    src = fetchegg {
      name = "simple-units";
      version = "1.2.5";
      sha256 = "1vf7aq7sg5n66nyzbdrdknnhyi7gakspi4gk4dklcvpqhzzkv49v";
    };

    buildInputs = [
      setup-helper
      check-errors
      record-variants
      list-utils
      symbol-utils
      lookup-table
      moremacros
      variable-item
    ];
  };

  siphash = eggDerivation {
    name = "siphash-0.0.3";

    src = fetchegg {
      name = "siphash";
      version = "0.0.3";
      sha256 = "1wd1hl3xvd7sb1hr6vxladbm76dqh4khw1zyq277x9dr68ac9rcx";
    };

    buildInputs = [
      numbers
    ];
  };

  sixtyfive-oh-two = eggDerivation {
    name = "sixtyfive-oh-two-0.1.3";

    src = fetchegg {
      name = "sixtyfive-oh-two";
      version = "0.1.3";
      sha256 = "1limhw1796nn4fyznzyx2gyicj9y7vbcdck1jyc97ax4615wph4d";
    };

    buildInputs = [
      defstruct
      crunch
      make
      miscmacros
      matchable
    ];
  };

  skiplists = eggDerivation {
    name = "skiplists-1.1.4";

    src = fetchegg {
      name = "skiplists";
      version = "1.1.4";
      sha256 = "0q9ai0fpjrzsvha82siadd73xk933c10njbvw6iavxbkrg7dcb46";
    };

    buildInputs = [
      dbc
    ];
  };

  slatex = eggDerivation {
    name = "slatex-20090928.1";

    src = fetchegg {
      name = "slatex";
      version = "20090928.1";
      sha256 = "14kzmd0d4cwvzgxajhjxm9algmzkj4py2wzsci5s4y4b89a73mar";
    };

    buildInputs = [
      
    ];
  };

  slice = eggDerivation {
    name = "slice-1.2";

    src = fetchegg {
      name = "slice";
      version = "1.2";
      sha256 = "007zvz7c0wxj5szfk2n74ci7qdjxl9xbgqpds5f68zpn08wnxm8p";
    };

    buildInputs = [
      utf8
    ];
  };

  slime = eggDerivation {
    name = "slime-1.2";

    src = fetchegg {
      name = "slime";
      version = "1.2";
      sha256 = "1mm050zrzcybl4wnpmyz3cb22pajmg5s142mdzlqa6lq565j7546";
    };

    buildInputs = [
      symbol-utils
      apropos
      chicken-doc
      fmt
    ];
  };

  smsmatrix = eggDerivation {
    name = "smsmatrix-0.1";

    src = fetchegg {
      name = "smsmatrix";
      version = "0.1";
      sha256 = "0zp6biyysqf2jg81zqxjrbvbq8ha6znysd4b5hcb0a2v876fj3bi";
    };

    buildInputs = [
      http-client
    ];
  };

  smtp = eggDerivation {
    name = "smtp-4.0";

    src = fetchegg {
      name = "smtp";
      version = "4.0";
      sha256 = "0xbmmdpl8hnlfcl75q3i8agynai6w3bkhzqqylqsqgqg84rfylrv";
    };

    buildInputs = [
      matchable
      datatype
      typeclass
      utf8
      abnf
    ];
  };

  snowdigest = eggDerivation {
    name = "snowdigest-1.0.1";

    src = fetchegg {
      name = "snowdigest";
      version = "1.0.1";
      sha256 = "02jyy4h0f0g6lmsk4hz7rcxbffg89slcl6vqrrwyxj209dm78z6x";
    };

    buildInputs = [
      miscmacros
    ];
  };

  snowtar = eggDerivation {
    name = "snowtar-1.0.1.1";

    src = fetchegg {
      name = "snowtar";
      version = "1.0.1.1";
      sha256 = "1bbxxfkhxygiqxhab22nclkccwffcni807h0rwq7kppb233vxylp";
    };

    buildInputs = [
      miscmacros
      numbers
    ];
  };

  socket = eggDerivation {
    name = "socket-0.2.6";

    src = fetchegg {
      name = "socket";
      version = "0.2.6";
      sha256 = "0j19w1jwz2pfkd90016c03d7mvrczz1a5mjl025rzpmlnfakb8zh";
    };

    buildInputs = [
      foreigners
      feature-test
    ];
  };

  soil = eggDerivation {
    name = "soil-1.2.1";

    src = fetchegg {
      name = "soil";
      version = "1.2.1";
      sha256 = "08avxmlaqf8plzddw5nnzl5p2cb2xpfc4i6jx1jakmz96z33idrx";
    };

    buildInputs = [
      pkgs.mesa_glu
      pkgs.xlibs.libX11
    ];
  };

  sp = eggDerivation {
    name = "sp-0.3";

    src = fetchegg {
      name = "sp";
      version = "0.3";
      sha256 = "001zv3mbqw6s4fhmq2q8mw22sq8acsjmnn2wqmfjrid0h2pbviv3";
    };

    buildInputs = [
      big-chicken
      honu
      matchable
      miscmacros
      typed-records
    ];
  };

  sparse-vectors = eggDerivation {
    name = "sparse-vectors-0.4";

    src = fetchegg {
      name = "sparse-vectors";
      version = "0.4";
      sha256 = "0y13iqi2inr6qm9c22y64z2hk9flc9cbq7phxsyidy9mvfg82skl";
    };

    buildInputs = [
      
    ];
  };

  spatial-trees = eggDerivation {
    name = "spatial-trees-2.11";

    src = fetchegg {
      name = "spatial-trees";
      version = "2.11";
      sha256 = "0g51b7vdl5kln2vx7zglxfq1dmd73vjzmxl4yi890k5akvx62r6a";
    };

    buildInputs = [
      datatype
      typeclass
      cis
    ];
  };

  special-case = eggDerivation {
    name = "special-case-0.1";

    src = fetchegg {
      name = "special-case";
      version = "0.1";
      sha256 = "1yls7mrscbpja2xci0i9x79mv4nlrq3x5zanydgfr7dj24fdxh2s";
    };

    buildInputs = [
      
    ];
  };

  specialized-io = eggDerivation {
    name = "specialized-io-1.3";

    src = fetchegg {
      name = "specialized-io";
      version = "1.3";
      sha256 = "08lsbg5a4gzzrin9y2pdw5hf5c38r79f5b1370pajg9h6747ljbn";
    };

    buildInputs = [
      numbers
    ];
  };

  speech-dispatcher-client = eggDerivation {
    name = "speech-dispatcher-client-0.0.1";

    src = fetchegg {
      name = "speech-dispatcher-client";
      version = "0.0.1";
      sha256 = "1g6d413qzym1kg25487008wb8f0jsdcb865sw1p9dx6q92vslj7v";
    };

    buildInputs = [
      unix-sockets
    ];
  };

  spiffy = eggDerivation {
    name = "spiffy-5.3.1";

    src = fetchegg {
      name = "spiffy";
      version = "5.3.1";
      sha256 = "03xzh67p4ljwlkwcvb0m4clj85mp0qz775c0g1rmpsgqa0c94iw6";
    };

    buildInputs = [
      intarweb
      uri-common
      uri-generic
      sendfile
    ];
  };

  spiffy-cgi-handlers = eggDerivation {
    name = "spiffy-cgi-handlers-0.3";

    src = fetchegg {
      name = "spiffy-cgi-handlers";
      version = "0.3";
      sha256 = "1p0rhwhlrr7czkl56lkzi0z6b6ig729mkmvw4wn89f8871nmva6s";
    };

    buildInputs = [
      spiffy
      intarweb
      uri-common
      regex
      socket
      records
    ];
  };

  spiffy-cookies = eggDerivation {
    name = "spiffy-cookies-1.1";

    src = fetchegg {
      name = "spiffy-cookies";
      version = "1.1";
      sha256 = "0ihfi76nfy2vci13lfypgx69wv0y5z53khs2l3rdrnhww5fi1knz";
    };

    buildInputs = [
      spiffy
      intarweb
    ];
  };

  spiffy-directory-listing = eggDerivation {
    name = "spiffy-directory-listing-0.1";

    src = fetchegg {
      name = "spiffy-directory-listing";
      version = "0.1";
      sha256 = "1mznzs5pwdjllryphpdp3njs9bin2l5yky595fibsqij2mq7mhl2";
    };

    buildInputs = [
      spiffy
      html-utils
    ];
  };

  spiffy-dynamic-handlers = eggDerivation {
    name = "spiffy-dynamic-handlers-0.1";

    src = fetchegg {
      name = "spiffy-dynamic-handlers";
      version = "0.1";
      sha256 = "1a66pnwak337x10msm2yw0h9p04cv1xybfby85kc5fzyxwcxa8ir";
    };

    buildInputs = [
      spiffy
      intarweb
    ];
  };

  spiffy-request-vars = eggDerivation {
    name = "spiffy-request-vars-0.17";

    src = fetchegg {
      name = "spiffy-request-vars";
      version = "0.17";
      sha256 = "1vdr67vyzzjkpxpyam9pm3gvd9vv8jswq5v41l8rkxqfh885v4ii";
    };

    buildInputs = [
      intarweb
      uri-common
      spiffy
    ];
  };

  spiffy-sexpr-log = eggDerivation {
    name = "spiffy-sexpr-log-0.2";

    src = fetchegg {
      name = "spiffy-sexpr-log";
      version = "0.2";
      sha256 = "0l8iz79gqypyrzbdqvjic6bxgizb3w4rml6rhcq7rlkgbhw3m1id";
    };

    buildInputs = [
      spiffy
      regex
    ];
  };

  spiffy-uri-match = eggDerivation {
    name = "spiffy-uri-match-0.3";

    src = fetchegg {
      name = "spiffy-uri-match";
      version = "0.3";
      sha256 = "1szdd73qnzw755x2snjwc477zkp0smady2zblm1gdns992jcnqsd";
    };

    buildInputs = [
      uri-match
      spiffy
      uri-common
      intarweb
    ];
  };

  spock = eggDerivation {
    name = "spock-0.097";

    src = fetchegg {
      name = "spock";
      version = "0.097";
      sha256 = "1kicibyjc4z15lnqqm3nz23sz59g6x9hzdf23xbciil04mc6qvnk";
    };

    buildInputs = [
      jsmin
      matchable
      make
    ];
  };

  sqdb = eggDerivation {
    name = "sqdb-0.0.3";

    src = fetchegg {
      name = "sqdb";
      version = "0.0.3";
      sha256 = "1sg9zr1wbz238c9w8gjc05f8x93103qsvjfgq3vc9gx10qcng1x4";
    };

    buildInputs = [
      sql-de-lite
    ];
  };

  sql-de-lite = eggDerivation {
    name = "sql-de-lite-0.6.3";

    src = fetchegg {
      name = "sql-de-lite";
      version = "0.6.3";
      sha256 = "0w93zqn6grp57qajqs5sgsxl60ygc4g0ycli3078gmxc1fvph3iv";
    };

    buildInputs = [
      lru-cache
      foreigners
      pkgs.sqlite
    ];
  };

  sql-null = eggDerivation {
    name = "sql-null-1.1";

    src = fetchegg {
      name = "sql-null";
      version = "1.1";
      sha256 = "0xzl6nvvk0dx7pdr8nrkqfl050m61j51rd0zcfnvxsxygs13h5hc";
    };

    buildInputs = [
      
    ];
  };

  sqlite3 = eggDerivation {
    name = "sqlite3-3.6.0";

    src = fetchegg {
      name = "sqlite3";
      version = "3.6.0";
      sha256 = "1hsx3lgg5j8w3niirv4zr4sj4550d05k0dna84b849dai04990j5";
    };

    buildInputs = [
      check-errors
      synch
      miscmacros
      matchable
      sql-null
      pkgs.sqlite
    ];
  };

  srfi-101 = eggDerivation {
    name = "srfi-101-0.0.2";

    src = fetchegg {
      name = "srfi-101";
      version = "0.0.2";
      sha256 = "1rkv91iy18wymhnijk3vzf3l3m9n7p05hmg1n3nw7qsb2xy1xla5";
    };

    buildInputs = [
      vector-lib
    ];
  };

  srfi-102 = eggDerivation {
    name = "srfi-102-1.0.3";

    src = fetchegg {
      name = "srfi-102";
      version = "1.0.3";
      sha256 = "0nqg8ykhzm0055am9v7favvc6690080i83rrcqd236ax08w5yys6";
    };

    buildInputs = [
      setup-helper
    ];
  };

  srfi-19 = eggDerivation {
    name = "srfi-19-3.3.5";

    src = fetchegg {
      name = "srfi-19";
      version = "3.3.5";
      sha256 = "0fb63lj181inx820swkmg5wqz5sq2i9b3496cps7rnrpm4qx59dp";
    };

    buildInputs = [
      setup-helper
      numbers
      miscmacros
      locale
      srfi-29
      check-errors
      record-variants
    ];
  };

  srfi-25 = eggDerivation {
    name = "srfi-25-1.2";

    src = fetchegg {
      name = "srfi-25";
      version = "1.2";
      sha256 = "05kg01h94lzdghbyf9y24wx8b9js7il7haga6igi5p75ida9rnm1";
    };

    buildInputs = [
      
    ];
  };

  srfi-27 = eggDerivation {
    name = "srfi-27-3.1.8";

    src = fetchegg {
      name = "srfi-27";
      version = "3.1.8";
      sha256 = "1fnckl5gajq8pk6x3cx0x8l4l4gn8q5djm014ij6ws6vnalrc1lc";
    };

    buildInputs = [
      setup-helper
      check-errors
      timed-resource
      thread-utils
      miscmacros
      vector-lib
      numbers
      synch
    ];
  };

  srfi-29 = eggDerivation {
    name = "srfi-29-2.3.2";

    src = fetchegg {
      name = "srfi-29";
      version = "2.3.2";
      sha256 = "0kx9a5rrlmya6iy0j9mr93s71mssiq7h32rhjd8kncp192118srz";
    };

    buildInputs = [
      setup-helper
      miscmacros
      variable-item
      posix-utils
      lookup-table
      locale
      check-errors
      condition-utils
    ];
  };

  srfi-34 = eggDerivation {
    name = "srfi-34-0.6";

    src = fetchegg {
      name = "srfi-34";
      version = "0.6";
      sha256 = "097kjng2zl7jx1mz607zcdzdwxx1ami7rl2n5nviny4lwl69axx0";
    };

    buildInputs = [
      
    ];
  };

  srfi-37 = eggDerivation {
    name = "srfi-37-1.3.1";

    src = fetchegg {
      name = "srfi-37";
      version = "1.3.1";
      sha256 = "1a2zdkdzrv15fw9dfdy8067fsgh4kr8ppffm8mc3cmlczrrd58cb";
    };

    buildInputs = [
      
    ];
  };

  srfi-38 = eggDerivation {
    name = "srfi-38-0.5";

    src = fetchegg {
      name = "srfi-38";
      version = "0.5";
      sha256 = "1kv2vdnzmpm9892d3pa4vf9aidl0a8d081wmlsrqrcvhp8x2i8g8";
    };

    buildInputs = [
      
    ];
  };

  srfi-4-comprehensions = eggDerivation {
    name = "srfi-4-comprehensions-1.4";

    src = fetchegg {
      name = "srfi-4-comprehensions";
      version = "1.4";
      sha256 = "1igrzhmj6v6glrh20nrqqflsd1ffcdabk59vlr26w64x52k3yd81";
    };

    buildInputs = [
      srfi-42
    ];
  };

  srfi-4-utils = eggDerivation {
    name = "srfi-4-utils-1.13";

    src = fetchegg {
      name = "srfi-4-utils";
      version = "1.13";
      sha256 = "02kyqmm0ws5rbls8lshyrvgpr5214zdld3v9006zfmzrmhrcqs45";
    };

    buildInputs = [
      srfi-42
      srfi-4-comprehensions
    ];
  };

  srfi-40 = eggDerivation {
    name = "srfi-40-0.3";

    src = fetchegg {
      name = "srfi-40";
      version = "0.3";
      sha256 = "0wb5w6hp4jqqaqh0gzshahpswnzakb836k258q2zy6f40ggjgpz3";
    };

    buildInputs = [
      records
      setup-helper
    ];
  };

  srfi-41 = eggDerivation {
    name = "srfi-41-1.2.3";

    src = fetchegg {
      name = "srfi-41";
      version = "1.2.3";
      sha256 = "1k1s9cnjrqmpxrrk61y9x2jnlck49hfjs1pjq87zrz4ig8krxn1q";
    };

    buildInputs = [
      setup-helper
      check-errors
      combinators
      record-variants
      numbers
    ];
  };

  srfi-42 = eggDerivation {
    name = "srfi-42-1.72";

    src = fetchegg {
      name = "srfi-42";
      version = "1.72";
      sha256 = "093w8x80yk1i29wscvqkxn7dngbm7gld0cqbsz7ksyws5b2d1nwg";
    };

    buildInputs = [
      
    ];
  };

  srfi-45 = eggDerivation {
    name = "srfi-45-3.1.0";

    src = fetchegg {
      name = "srfi-45";
      version = "3.1.0";
      sha256 = "0fajid6bplyrf9hncs5svmka8grrq2r1vfz632jzjzcfq12s75p8";
    };

    buildInputs = [
      setup-helper
      check-errors
    ];
  };

  srfi-60 = eggDerivation {
    name = "srfi-60-0.2";

    src = fetchegg {
      name = "srfi-60";
      version = "0.2";
      sha256 = "17d0sbf9rf2sbjnw1jd21xgq5kq484rp70pzc5jfqgs5m6m78lqr";
    };

    buildInputs = [
      setup-helper
    ];
  };

  srfi-63 = eggDerivation {
    name = "srfi-63-0.4";

    src = fetchegg {
      name = "srfi-63";
      version = "0.4";
      sha256 = "0dlksq63qvdcrda0lcq3pxavz6b2y79wki4vriqr8cn03fsi54n7";
    };

    buildInputs = [
      records
    ];
  };

  srfi-7 = eggDerivation {
    name = "srfi-7-0.1";

    src = fetchegg {
      name = "srfi-7";
      version = "0.1";
      sha256 = "178hq3zdrb70387zij9drgnw57zs5ysmpbllkv3zwdrcrn619s2h";
    };

    buildInputs = [
      
    ];
  };

  srfi-71 = eggDerivation {
    name = "srfi-71-1.1";

    src = fetchegg {
      name = "srfi-71";
      version = "1.1";
      sha256 = "01mlaxw2lfczykmx69xki2s0f4ywlg794rl4kz07plvzn0s3fbqq";
    };

    buildInputs = [
      
    ];
  };

  srfi-78 = eggDerivation {
    name = "srfi-78-1.0";

    src = fetchegg {
      name = "srfi-78";
      version = "1.0";
      sha256 = "0w6mshw1rdbm1qcrrxy7yapw1wf3f7lfxi0m46s5gmki5l39sm7w";
    };

    buildInputs = [
      srfi-42
    ];
  };

  srfi-9-ext = eggDerivation {
    name = "srfi-9-ext-1.0.3";

    src = fetchegg {
      name = "srfi-9-ext";
      version = "1.0.3";
      sha256 = "0yz6wgmqj6mf27jnq4w1gqrapdzh2k7sp5kslfb5i2bqkz4v8brv";
    };

    buildInputs = [
      setup-helper
    ];
  };

  srfi-95 = eggDerivation {
    name = "srfi-95-1.3";

    src = fetchegg {
      name = "srfi-95";
      version = "1.3";
      sha256 = "1zdyrgdxf11mi5h2gbl188h0h9821m2a6a3n4p7gi1wkrv9j5jm0";
    };

    buildInputs = [
      srfi-63
      setup-helper
    ];
  };

  srfi-99 = eggDerivation {
    name = "srfi-99-1.4.2";

    src = fetchegg {
      name = "srfi-99";
      version = "1.4.2";
      sha256 = "0fdfzl3ijh7rph63z5m3xi259g3v0zilsqp3awzx90xfdwv2naib";
    };

    buildInputs = [
      
    ];
  };

  srfi-modules = eggDerivation {
    name = "srfi-modules-0.2";

    src = fetchegg {
      name = "srfi-modules";
      version = "0.2";
      sha256 = "1x9xvcg23fwlr9v397iminw1ahw5jsx0w7hi6qjc8686rwzgw41n";
    };

    buildInputs = [
      
    ];
  };

  ssax = eggDerivation {
    name = "ssax-5.0.7";

    src = fetchegg {
      name = "ssax";
      version = "5.0.7";
      sha256 = "1jzsy7p6nn53mq74n2klqfkkdyl0jp0b75dx8m21krvqjwz22jlv";
    };

    buildInputs = [
      input-parse
    ];
  };

  ssql = eggDerivation {
    name = "ssql-0.2.2";

    src = fetchegg {
      name = "ssql";
      version = "0.2.2";
      sha256 = "10557ymy0fgvqqazsg2jsbqvng0b91jqcjfgsxkrq8xs3klyd5mf";
    };

    buildInputs = [
      matchable
    ];
  };

  ssql-postgresql = eggDerivation {
    name = "ssql-postgresql-0.1.2";

    src = fetchegg {
      name = "ssql-postgresql";
      version = "0.1.2";
      sha256 = "1xfxcy7nq4qbq5s3x890m5vyaflmgps5427mjjhgc651471g2ps0";
    };

    buildInputs = [
      ssql
      postgresql
    ];
  };

  stack = eggDerivation {
    name = "stack-2.1.4";

    src = fetchegg {
      name = "stack";
      version = "2.1.4";
      sha256 = "005vc5zky0d1l6hlgqphirijk184x5wjjnnrzysk38qasi6x4hsq";
    };

    buildInputs = [
      setup-helper
      check-errors
    ];
  };

  stalin = eggDerivation {
    name = "stalin-0.11.9";

    src = fetchegg {
      name = "stalin";
      version = "0.11.9";
      sha256 = "0z4h0zya0xqqy7sgrkxjprdayiwrshhpjr09ajyb0j1nf23m0cx5";
    };

    buildInputs = [
      make
    ];
  };

  static-modules = eggDerivation {
    name = "static-modules-1.8";

    src = fetchegg {
      name = "static-modules";
      version = "1.8";
      sha256 = "10lm8vmsbgbw610wq0a3gf8a6c51qpn1jf8nz0z8k4xs3kjc80jl";
    };

    buildInputs = [
      datatype
    ];
  };

  statistics = eggDerivation {
    name = "statistics-0.5";

    src = fetchegg {
      name = "statistics";
      version = "0.5";
      sha256 = "0189sl9p5d380zfmy483p1hq1b847ldgcpx9kf0crascxv9g0d7c";
    };

    buildInputs = [
      srfi-25
      srfi-63
      vector-lib
      numbers
      format
      pkgs.gsl
    ];
  };

  statvfs = eggDerivation {
    name = "statvfs-1.1.0";

    src = fetchegg {
      name = "statvfs";
      version = "1.1.0";
      sha256 = "11mr1igw7ssc6gz63r0lfvjck7cg6cbq67r4vk8sh5rc02a3kiyx";
    };

    buildInputs = [
      foreigners
    ];
  };

  stemmer = eggDerivation {
    name = "stemmer-0.0.1";

    src = fetchegg {
      name = "stemmer";
      version = "0.0.1";
      sha256 = "01v2ajb1l20gb8qwlikmis75gpw28zjfsr5qnz4h5w4a4k285lq0";
    };

    buildInputs = [
      
    ];
  };

  strictly-pretty = eggDerivation {
    name = "strictly-pretty-1.4";

    src = fetchegg {
      name = "strictly-pretty";
      version = "1.4";
      sha256 = "1yzw6wscznhqhc9d4fwy4af3lnzdnib7vavpp7sdpawj5r67ipaf";
    };

    buildInputs = [
      datatype
      matchable
    ];
  };

  string-utils = eggDerivation {
    name = "string-utils-1.2.4";

    src = fetchegg {
      name = "string-utils";
      version = "1.2.4";
      sha256 = "07alvghg0dahilrm4jg44bndl0x69sv1zbna9l20cbdvi35i0jp1";
    };

    buildInputs = [
      setup-helper
      miscmacros
      lookup-table
      check-errors
    ];
  };

  striped-zebra = eggDerivation {
    name = "striped-zebra-0.2";

    src = fetchegg {
      name = "striped-zebra";
      version = "0.2";
      sha256 = "15bwd0czwhhzl3hjd9fzmzx01ja61jjy8v8znc5gbfrhl1p7ijpj";
    };

    buildInputs = [
      http-client
      uri-common
      intarweb
      json
    ];
  };

  stty = eggDerivation {
    name = "stty-0.2.5";

    src = fetchegg {
      name = "stty";
      version = "0.2.5";
      sha256 = "16dhjx2nvy2dbjnpcqs4hq4n41xkbg3247n29icnvp6c9xsy9fwk";
    };

    buildInputs = [
      setup-helper
      foreigners
    ];
  };

  sublevel = eggDerivation {
    name = "sublevel-2.0.0";

    src = fetchegg {
      name = "sublevel";
      version = "2.0.0";
      sha256 = "0chf00dc0b94kidgg5w0hnibdsiw4kqydg4v8nlbfm97prxi2p54";
    };

    buildInputs = [
      utf8
      level
      interfaces
      lazy-seq
    ];
  };

  suffix-tree = eggDerivation {
    name = "suffix-tree-2.0";

    src = fetchegg {
      name = "suffix-tree";
      version = "2.0";
      sha256 = "1dy4hv95sy6mwsm5jfl51yizfvcr2hddr9hdx87niq69h3f8v55c";
    };

    buildInputs = [
      datatype
      matchable
    ];
  };

  sundials = eggDerivation {
    name = "sundials-2.11";

    src = fetchegg {
      name = "sundials";
      version = "2.11";
      sha256 = "0f7nzm6bxn7pl3hjn8m5359j1ckrr0n9hm5ymxjbjynwllbmqd84";
    };

    buildInputs = [
      dyn-vector
    ];
  };

  suspension = eggDerivation {
    name = "suspension-0.4";

    src = fetchegg {
      name = "suspension";
      version = "0.4";
      sha256 = "1gdbjm78djpbrdijz7h5jxb7j635iamv0rin8cs0vrz4rczjkc6p";
    };

    buildInputs = [
      s11n
    ];
  };

  svn-client = eggDerivation {
    name = "svn-client-0.19";

    src = fetchegg {
      name = "svn-client";
      version = "0.19";
      sha256 = "1rz2s98qxsgyysa6p1y1wm51bdrqrcll6xf0q3i04rps285k1zjx";
    };

    buildInputs = [
      pkgs.subversion
      pkgs.apr
      pkgs.aprutil
      pkgs.which
    ];
  };

  svn-egg-author = eggDerivation {
    name = "svn-egg-author-0.1.4";

    src = fetchegg {
      name = "svn-egg-author";
      version = "0.1.4";
      sha256 = "1ykqp5w78kj6v2619cxswm1vzxdb90zwckgcg59a4vd3b6nbhzdk";
    };

    buildInputs = [
      ssax
      sxpath
    ];
  };

  svnwiki-sxml = eggDerivation {
    name = "svnwiki-sxml-0.2.13";

    src = fetchegg {
      name = "svnwiki-sxml";
      version = "0.2.13";
      sha256 = "0bnq8b7q20azihsnx5ny4370n3hvdc5jq0l1x7h550rc86yhnarh";
    };

    buildInputs = [
      matchable
      html-parser
      sxml-transforms
      regex
    ];
  };

  sxml-fu = eggDerivation {
    name = "sxml-fu-0.2";

    src = fetchegg {
      name = "sxml-fu";
      version = "0.2";
      sha256 = "1c0vmdl0zylrxylvl4xz51sii11cb30p8x0560an61bvj4y6sbsa";
    };

    buildInputs = [
      sxml-transforms
      uri-common
    ];
  };

  sxml-informal = eggDerivation {
    name = "sxml-informal-0.4";

    src = fetchegg {
      name = "sxml-informal";
      version = "0.4";
      sha256 = "145c1lsa35s4jjbjnskpw9jbd1vcfnjkypjc1pqv2gsa34bfr5my";
    };

    buildInputs = [
      sxml-transforms
      sxpath
    ];
  };

  sxml-modifications = eggDerivation {
    name = "sxml-modifications-0.1.1";

    src = fetchegg {
      name = "sxml-modifications";
      version = "0.1.1";
      sha256 = "00ligd39dh2lq0ikw40243ys38gam0nyn6dfjwxqissbbfp409kn";
    };

    buildInputs = [
      sxpath
    ];
  };

  sxml-serializer = eggDerivation {
    name = "sxml-serializer-0.4";

    src = fetchegg {
      name = "sxml-serializer";
      version = "0.4";
      sha256 = "1wdxrmsr90vbpifs271pi4l1822j4wg0wr6g3cawp90kqydyr1kx";
    };

    buildInputs = [
      
    ];
  };

  sxml-templates = eggDerivation {
    name = "sxml-templates-0.2.1";

    src = fetchegg {
      name = "sxml-templates";
      version = "0.2.1";
      sha256 = "0r7fypc56f49765h4h4r5kp9206a632q89cq054a0ahsh1c553ms";
    };

    buildInputs = [
      sxml-transforms
      records
      setup-helper
    ];
  };

  sxml-transforms = eggDerivation {
    name = "sxml-transforms-1.4.1";

    src = fetchegg {
      name = "sxml-transforms";
      version = "1.4.1";
      sha256 = "1igm3h1nm1i5mwm2akk105v5k96azjm1vnl637l3l5w2yycc76a2";
    };

    buildInputs = [
      
    ];
  };

  sxpath = eggDerivation {
    name = "sxpath-0.2";

    src = fetchegg {
      name = "sxpath";
      version = "0.2";
      sha256 = "1z304q9b0cmhiaaiaynx2nm8683gb5bwl6fb2hvf5jdq0fmdjl1s";
    };

    buildInputs = [
      
    ];
  };

  symbol-utils = eggDerivation {
    name = "symbol-utils-1.0.2";

    src = fetchegg {
      name = "symbol-utils";
      version = "1.0.2";
      sha256 = "1xjxk339w8k9n3sqidip8mddqhs3gnxymfqnr37abyacri1mjqwm";
    };

    buildInputs = [
      setup-helper
      check-errors
    ];
  };

  syn-param = eggDerivation {
    name = "syn-param-0.2";

    src = fetchegg {
      name = "syn-param";
      version = "0.2";
      sha256 = "1rlngwybr3whdmhpkii8f161mw1if2n7zb2w8626zc0k12d1mlgw";
    };

    buildInputs = [
      
    ];
  };

  synch = eggDerivation {
    name = "synch-2.1.2";

    src = fetchegg {
      name = "synch";
      version = "2.1.2";
      sha256 = "1m9mnbq0m5jsxmd1a3rqpwpxj0l1b7vn1fknvxycc047pmlcyl00";
    };

    buildInputs = [
      setup-helper
      check-errors
    ];
  };

  sysexits = eggDerivation {
    name = "sysexits-0.1.0";

    src = fetchegg {
      name = "sysexits";
      version = "0.1.0";
      sha256 = "0gsn7y2m4a7pm71mxm1vmrlk2xzbkp5cfv2xm3r3s1dyhf4rfzph";
    };

    buildInputs = [
      
    ];
  };

  syslog = eggDerivation {
    name = "syslog-1.2";

    src = fetchegg {
      name = "syslog";
      version = "1.2";
      sha256 = "0vhay5acqkhibv9di35gpq5p43ms4h50sli06ambbdz58qw78821";
    };

    buildInputs = [
      
    ];
  };

  system = eggDerivation {
    name = "system-0.7";

    src = fetchegg {
      name = "system";
      version = "0.7";
      sha256 = "0hs2mjbfqjgqhp46w3nha8y0qzqcm5vm0xawkmlss3qqxzpcjnpx";
    };

    buildInputs = [
      coops
      shell
    ];
  };

  tabexpand = eggDerivation {
    name = "tabexpand-1.7";

    src = fetchegg {
      name = "tabexpand";
      version = "1.7";
      sha256 = "0z231jzdg3wp3w59a01rrk4m332ck3jh3akxz9p5a2r1clq9zml6";
    };

    buildInputs = [
      
    ];
  };

  tagged-netstring = eggDerivation {
    name = "tagged-netstring-0.0.1";

    src = fetchegg {
      name = "tagged-netstring";
      version = "0.0.1";
      sha256 = "0v9h2band3vmal1bkpndmg32kd4zx9mnz40hph6jqap0vx6zwmj2";
    };

    buildInputs = [
      netstring
    ];
  };

  tcp-server = eggDerivation {
    name = "tcp-server-1.2";

    src = fetchegg {
      name = "tcp-server";
      version = "1.2";
      sha256 = "0g447mbmda2w88idkz7q8by1kz2ss4m1vc0flrwan6ms4k0mddnz";
    };

    buildInputs = [
      
    ];
  };

  tcp6 = eggDerivation {
    name = "tcp6-0.1.1";

    src = fetchegg {
      name = "tcp6";
      version = "0.1.1";
      sha256 = "07zw3lnr8ggvjg5zcjj8plp35l70q91n6v2x0s0lw5rdyxi1p3gx";
    };

    buildInputs = [
      socket
    ];
  };

  templort = eggDerivation {
    name = "templort-0.0.1";

    src = fetchegg {
      name = "templort";
      version = "0.0.1";
      sha256 = "0vyjdrg901ij57qj0vny27mq6ixz4wd23cciai9407x8nskd2ybp";
    };

    buildInputs = [
      
    ];
  };

  termbox = eggDerivation {
    name = "termbox-v0.11";

    src = fetchegg {
      name = "termbox";
      version = "v0.11";
      sha256 = "16fafyx69276hkzdl99x94i2b61hdsrczbd44y58jwdrqs681wj6";
    };

    buildInputs = [
      
    ];
  };

  test = eggDerivation {
    name = "test-0.9.9.8";

    src = fetchegg {
      name = "test";
      version = "0.9.9.8";
      sha256 = "0wdp1ji66l17h5c0c9llk5ng0iy8snqh6dnrzlnsrfry0cb0dhlz";
    };

    buildInputs = [
      regex
    ];
  };

  test-generative = eggDerivation {
    name = "test-generative-0.0.4";

    src = fetchegg {
      name = "test-generative";
      version = "0.0.4";
      sha256 = "1zzm92qqrp5c3d53h47k8vdmijnmhd7jx1dxbkl3d3wpc7knbzz5";
    };

    buildInputs = [
      test
    ];
  };

  testdrive = eggDerivation {
    name = "testdrive-1.7";

    src = fetchegg {
      name = "testdrive";
      version = "1.7";
      sha256 = "079wspksvfanpli5f4765y6asisjz45v0cyy7f4nkc1kms63i4ig";
    };

    buildInputs = [
      regex
      uri-generic
      ersatz
    ];
  };

  testeez = eggDerivation {
    name = "testeez-0.3.1";

    src = fetchegg {
      name = "testeez";
      version = "0.3.1";
      sha256 = "0xjx8yk6cgv3spz8firi58b1aww7jnfsgzh9p57ihh30ik20y1dy";
    };

    buildInputs = [
      
    ];
  };

  thread-utils = eggDerivation {
    name = "thread-utils-1.0.3";

    src = fetchegg {
      name = "thread-utils";
      version = "1.0.3";
      sha256 = "1ayb3ckz0zqzfgzc94zm3pbjc8bbixavnzhdrq8n8cra1f26pm1p";
    };

    buildInputs = [
      setup-helper
      check-errors
      record-variants
      miscmacros
      synch
    ];
  };

  tiger-hash = eggDerivation {
    name = "tiger-hash-3.1.0";

    src = fetchegg {
      name = "tiger-hash";
      version = "3.1.0";
      sha256 = "0j9dsbjp9cw0y4w4srg0qwgh53jw2v3mx4y4h040ds0fkxlzzknx";
    };

    buildInputs = [
      message-digest
    ];
  };

  timed-resource = eggDerivation {
    name = "timed-resource-1.0.2";

    src = fetchegg {
      name = "timed-resource";
      version = "1.0.2";
      sha256 = "13wh31i79cxzkb0757mfxq0rydb7cvrw19mz8jdgdw4cki9sssn9";
    };

    buildInputs = [
      setup-helper
      record-variants
      check-errors
      thread-utils
      synch
    ];
  };

  tiny-prolog = eggDerivation {
    name = "tiny-prolog-2.0";

    src = fetchegg {
      name = "tiny-prolog";
      version = "2.0";
      sha256 = "1xp4sd5d7zv1b5j3am16z30pqgv3wz7lclwpm3v1dj2cbw2d1ida";
    };

    buildInputs = [
      
    ];
  };

  tinyclos = eggDerivation {
    name = "tinyclos-1.8.6";

    src = fetchegg {
      name = "tinyclos";
      version = "1.8.6";
      sha256 = "02p1gh5f0qydv6q4frxxnr13sfjga628akwrz22sfmjw24jwz35h";
    };

    buildInputs = [
      
    ];
  };

  tinyclos-xerox = eggDerivation {
    name = "tinyclos-xerox-0.0.4";

    src = fetchegg {
      name = "tinyclos-xerox";
      version = "0.0.4";
      sha256 = "1m42d43iv3g03rkdbllx03kzci7y63psfikpir8dygd36mkx6z2b";
    };

    buildInputs = [
      
    ];
  };

  tk = eggDerivation {
    name = "tk-1.9";

    src = fetchegg {
      name = "tk";
      version = "1.9";
      sha256 = "1i1f1zqs2pxi8h2j5h5mzwsbbnrjwkzmvjhghki01hmspfirl49n";
    };

    buildInputs = [
      
    ];
  };

  token-substitution = eggDerivation {
    name = "token-substitution-0.2.2";

    src = fetchegg {
      name = "token-substitution";
      version = "0.2.2";
      sha256 = "0g8804gmqh216aifs2g2mp811fzpi8dd8mpynmh5cgyrzpxv7y64";
    };

    buildInputs = [
      setup-helper
      vector-lib
    ];
  };

  tokyocabinet = eggDerivation {
    name = "tokyocabinet-2.02";

    src = fetchegg {
      name = "tokyocabinet";
      version = "2.02";
      sha256 = "0hh3a357z6yd3g79mbrbagrlxmgyfhlc837zqgjfmw6kh4wjwdaa";
    };

    buildInputs = [
      easyffi
      pkgs.tokyocabinet
    ];
  };

  trace = eggDerivation {
    name = "trace-0.8";

    src = fetchegg {
      name = "trace";
      version = "0.8";
      sha256 = "0j89bf15rhss9b56dpybdgy0mvch3asq20yi1gxsznz1d9rdibfr";
    };

    buildInputs = [
      advice
      miscmacros
    ];
  };

  traversal = eggDerivation {
    name = "traversal-1.6";

    src = fetchegg {
      name = "traversal";
      version = "1.6";
      sha256 = "129mipw201v8nmcq46ggwymmwdpnjpv6qp2sb3as6f3b3zfyi8si";
    };

    buildInputs = [
      setup-helper
      miscmacros
      check-errors
      condition-utils
      vector-lib
    ];
  };

  treap = eggDerivation {
    name = "treap-1.7";

    src = fetchegg {
      name = "treap";
      version = "1.7";
      sha256 = "1dhn9zcnfsq06f5p8vl2ypkj4djxnyy96n6fa7h8h0mbprg87hng";
    };

    buildInputs = [
      
    ];
  };

  treaps = eggDerivation {
    name = "treaps-0.1.2";

    src = fetchegg {
      name = "treaps";
      version = "0.1.2";
      sha256 = "1x48gl4dfa2960hazv4l6l538pxjgb0dw7lc10q7x0lcz08d5jwv";
    };

    buildInputs = [
      treap
    ];
  };

  tree-rewrite = eggDerivation {
    name = "tree-rewrite-1.0";

    src = fetchegg {
      name = "tree-rewrite";
      version = "1.0";
      sha256 = "1113a7vkrcr70w657b5xydvyvghlh66p6jv7x9q0kmwmr74z1660";
    };

    buildInputs = [
      
    ];
  };

  trie = eggDerivation {
    name = "trie-0.0.1";

    src = fetchegg {
      name = "trie";
      version = "0.0.1";
      sha256 = "0xyzpw4qa70zwm927a17z4478wp47yn6jsm5lmzm6lidpnpndhxn";
    };

    buildInputs = [
      
    ];
  };

  tuples = eggDerivation {
    name = "tuples-1.2";

    src = fetchegg {
      name = "tuples";
      version = "1.2";
      sha256 = "1q52accy107swxcxyfd15sblra9w66827crdyhn1qvdx9gydqhfn";
    };

    buildInputs = [
      dbc
    ];
  };

  tween = eggDerivation {
    name = "tween-1.0";

    src = fetchegg {
      name = "tween";
      version = "1.0";
      sha256 = "0094gjrjjijh9486n14xj0mmja78i9djngjpa5g54jgzhszhh7gf";
    };

    buildInputs = [
      
    ];
  };

  twilio = eggDerivation {
    name = "twilio-0.2.4";

    src = fetchegg {
      name = "twilio";
      version = "0.2.4";
      sha256 = "0p209mzx4kwv4ca1l1fly24i00aw9qflbn9f5d1261gviy3xmjkm";
    };

    buildInputs = [
      cock
      htmlprag
      http-client
      matchable
      s
      setup-helper
    ];
  };

  type-extensions = eggDerivation {
    name = "type-extensions-0.0.1";

    src = fetchegg {
      name = "type-extensions";
      version = "0.0.1";
      sha256 = "1v9rcygw680413by67jvd4vb16khcwv6cjrylbxl0gkfamwmvgjk";
    };

    buildInputs = [
      matchable
    ];
  };

  type-stubs = eggDerivation {
    name = "type-stubs-0.0.1";

    src = fetchegg {
      name = "type-stubs";
      version = "0.0.1";
      sha256 = "14d1dw8l8phwcpav1dp7limv2nwqbdyvgar8gjhqsfdsb047vjs4";
    };

    buildInputs = [
      
    ];
  };

  typeclass = eggDerivation {
    name = "typeclass-1.3";

    src = fetchegg {
      name = "typeclass";
      version = "1.3";
      sha256 = "0ci5k8sg3c865gv5zd436jn8b5yah3fs86v04042k7iikrxsi546";
    };

    buildInputs = [
      matchable
    ];
  };

  typed-lists = eggDerivation {
    name = "typed-lists-2.1";

    src = fetchegg {
      name = "typed-lists";
      version = "2.1";
      sha256 = "0g81icc0sj35z9n0m29i817ykm4g5kv6zp22ljwj5k592d4sh77j";
    };

    buildInputs = [
      datatype
    ];
  };

  typed-modules = eggDerivation {
    name = "typed-modules-0.1";

    src = fetchegg {
      name = "typed-modules";
      version = "0.1";
      sha256 = "19x81jx3q919lk2smv84b7n59sh3nml1l5ms5nlwdyvb5qdrgik0";
    };

    buildInputs = [
      matchable
    ];
  };

  typed-records = eggDerivation {
    name = "typed-records-0.6";

    src = fetchegg {
      name = "typed-records";
      version = "0.6";
      sha256 = "1w9nrxqgsbs3xm7h7zyqxc1709akrff7knxrp9bsc412y8ijs0j6";
    };

    buildInputs = [
      defstruct
      type-stubs
    ];
  };

  udev = eggDerivation {
    name = "udev-0.0.1";

    src = fetchegg {
      name = "udev";
      version = "0.0.1";
      sha256 = "194ng2hxqjzljffc6mmrwcxp6sqzr5np3s9my0pcyg9npqq6axl2";
    };

    buildInputs = [
      pkgs.udev
    ];
  };

  udp = eggDerivation {
    name = "udp-1.18";

    src = fetchegg {
      name = "udp";
      version = "1.18";
      sha256 = "1akn8w8z4ymwzkvx6cjlw6iwlxmqq7cpnf10wfvywwrmdjjqwdw2";
    };

    buildInputs = [
      
    ];
  };

  udp6 = eggDerivation {
    name = "udp6-0.1";

    src = fetchegg {
      name = "udp6";
      version = "0.1";
      sha256 = "1s3xp9hw8d970c26wmyh299jyl1bd2sfq721za41431sxaihgfd5";
    };

    buildInputs = [
      socket
    ];
  };

  ugarit = eggDerivation {
    name = "ugarit-1.0.9";

    src = fetchegg {
      name = "ugarit";
      version = "1.0.9";
      sha256 = "1knhpy0l9g0i5yjvlq1ns22yrn46hin4c2ad0qfzqnlv4mdryrj1";
    };

    buildInputs = [
      miscmacros
      sql-de-lite
      crypto-tools
      srfi-37
      stty
      matchable
      regex
      tiger-hash
      message-digest
      posix-extras
      parley
    ];
  };

  unitconv = eggDerivation {
    name = "unitconv-2.5";

    src = fetchegg {
      name = "unitconv";
      version = "2.5";
      sha256 = "00cjvl5nysyikfws8725n85cjldff75c8qgc14g3867fzcmv1ggj";
    };

    buildInputs = [
      datatype
      matchable
      numbers
    ];
  };

  unix-sockets = eggDerivation {
    name = "unix-sockets-1.8";

    src = fetchegg {
      name = "unix-sockets";
      version = "1.8";
      sha256 = "1169b2xn35j3ca1mibb21wm84wdmay87iqh9hplk05kl57s65wkc";
    };

    buildInputs = [
      easyffi
    ];
  };

  uri-common = eggDerivation {
    name = "uri-common-1.4";

    src = fetchegg {
      name = "uri-common";
      version = "1.4";
      sha256 = "01ds1gixcn4rz657x3hr4rhw2496hsjff42ninw0k39l8i1cbh7c";
    };

    buildInputs = [
      uri-generic
      defstruct
      matchable
    ];
  };

  uri-dispatch = eggDerivation {
    name = "uri-dispatch-1.2";

    src = fetchegg {
      name = "uri-dispatch";
      version = "1.2";
      sha256 = "0b6sb0c012kdy2dmqfdmv04vy52s8h9c6vfgwg6a1lkfvfbjxf2f";
    };

    buildInputs = [
      uri-common
      environments
    ];
  };

  uri-generic = eggDerivation {
    name = "uri-generic-2.41";

    src = fetchegg {
      name = "uri-generic";
      version = "2.41";
      sha256 = "1r5jbzjllbnmhm5n0m3fcx0g6dc2c2jzp1dcndkfmxz0cl99zxac";
    };

    buildInputs = [
      matchable
      defstruct
    ];
  };

  uri-match = eggDerivation {
    name = "uri-match-0.7";

    src = fetchegg {
      name = "uri-match";
      version = "0.7";
      sha256 = "1y4k3ac332w3hjxlipjpxvfn7pikb9cnaslxbz204h5dzvcvx2r5";
    };

    buildInputs = [
      uri-common
      regex
    ];
  };

  usage = eggDerivation {
    name = "usage-0.1";

    src = fetchegg {
      name = "usage";
      version = "0.1";
      sha256 = "18j17v20n362zyn5vm07v0p484mjzvxsrwqvkqjn12jz5ppf8s88";
    };

    buildInputs = [
      
    ];
  };

  usb = eggDerivation {
    name = "usb-0.1.3";

    src = fetchegg {
      name = "usb";
      version = "0.1.3";
      sha256 = "1ynykm523f4i2cprn2cms8nxhgxz8ay4qmplzqvq8r1rx54phhm7";
    };

    buildInputs = [
      pkgs.pkgconfig
      pkgs.libusb1
    ];
  };

  utf8 = eggDerivation {
    name = "utf8-3.3.9";

    src = fetchegg {
      name = "utf8";
      version = "3.3.9";
      sha256 = "0xb81yjbd0q7jbj2djhwxfa6injdci4n82s0qqv0kwlgxr48qv1b";
    };

    buildInputs = [
      iset
      regex
      make
    ];
  };

  uuid = eggDerivation {
    name = "uuid-0.1";

    src = fetchegg {
      name = "uuid";
      version = "0.1";
      sha256 = "1shccx78aa71ir7a156rkykvxa3sz7afvdj13dp7ija232fs52kg";
    };

    buildInputs = [
      
    ];
  };

  uuid-lib = eggDerivation {
    name = "uuid-lib-1.4.1";

    src = fetchegg {
      name = "uuid-lib";
      version = "1.4.1";
      sha256 = "1v8rmrw88280g9gjzp2rvim9xvkiygxp2p8i91758s0rcp8sg6z4";
    };

    buildInputs = [
      setup-helper
      pkgs.libuuid
    ];
  };

  uuid-ossp = eggDerivation {
    name = "uuid-ossp-1.4.2";

    src = fetchegg {
      name = "uuid-ossp";
      version = "1.4.2";
      sha256 = "0nmryad0d9zl1bkvx1miwy37d16bw62yy77kilk189vsxr8l5sl5";
    };

    buildInputs = [
      setup-helper
      pkgs.libossp_uuid
    ];
  };

  vandusen = eggDerivation {
    name = "vandusen-0.12";

    src = fetchegg {
      name = "vandusen";
      version = "0.12";
      sha256 = "1v76vyr7fd1y3j6wf6aqr5fq64xmaa4xd7rsrbh26h4yg1i8bnzv";
    };

    buildInputs = [
      irc
      chicken-doc
      sandbox
      uri-common
      sql-de-lite
      make
    ];
  };

  variable-item = eggDerivation {
    name = "variable-item-1.3.1";

    src = fetchegg {
      name = "variable-item";
      version = "1.3.1";
      sha256 = "19b3mhb8kr892sz9yyzq79l0vv28dgilw9cf415kj6aq16yp4d5n";
    };

    buildInputs = [
      setup-helper
      check-errors
    ];
  };

  varsubst = eggDerivation {
    name = "varsubst-1.4";

    src = fetchegg {
      name = "varsubst";
      version = "1.4";
      sha256 = "0xw0rapa9gma34wyjz86qnm2wvrwki4bimcscfdic871lffy767p";
    };

    buildInputs = [
      
    ];
  };

  vector-lib = eggDerivation {
    name = "vector-lib-1.2.2";

    src = fetchegg {
      name = "vector-lib";
      version = "1.2.2";
      sha256 = "03v1431r7izr76zn8r1nc172f6a4r55z0918x0v08kclw1mv67f6";
    };

    buildInputs = [
      
    ];
  };

  versions = eggDerivation {
    name = "versions-1.15";

    src = fetchegg {
      name = "versions";
      version = "1.15";
      sha256 = "0qs9yq0jvz9cfd2vwvf1ya8wxxxqghhai57x0w3ywi0h4afbqivm";
    };

    buildInputs = [
      eggdoc
    ];
  };

  vfs = eggDerivation {
    name = "vfs-0.2.0";

    src = fetchegg {
      name = "vfs";
      version = "0.2.0";
      sha256 = "1a9dbyn40yqrsds1fzm9iw9na6wjgi8mj8jak8w81wnmjr25di3r";
    };

    buildInputs = [
      tinyclos
      regex-case
    ];
  };

  vlist = eggDerivation {
    name = "vlist-1.0";

    src = fetchegg {
      name = "vlist";
      version = "1.0";
      sha256 = "0h4d9j596y6n56c35wbf6rjqc5k24q4p70qw7hwj54l342xxi8q9";
    };

    buildInputs = [
      
    ];
  };

  webgate = eggDerivation {
    name = "webgate-1.0.0";

    src = fetchegg {
      name = "webgate";
      version = "1.0.0";
      sha256 = "0kwnwpafmwaqb0inqnhvhhvpp6dqqwzncljpb74369z0am861hkj";
    };

    buildInputs = [
      srfi-99
      pkgs.libuuid
    ];
  };

  webkit = eggDerivation {
    name = "webkit-1.2.0";

    src = fetchegg {
      name = "webkit";
      version = "1.2.0";
      sha256 = "09hmx2x1840snms5i8gnlk9macbv6ad5g7xxd0c9irr3q63zm0v2";
    };

    buildInputs = [
      srfi-42
      srfi-99
      pkgs.pkgconfig
      pkgs.webkitgtk
    ];
  };

  websockets = eggDerivation {
    name = "websockets-0.1.3";

    src = fetchegg {
      name = "websockets";
      version = "0.1.3";
      sha256 = "14vz3zki6kphxymssjlxrhw7h8pshqkf71q3rrbbs8lifaqllpb3";
    };

    buildInputs = [
      spiffy
      intarweb
      uri-common
      base64
      simple-sha1
      mailbox
      comparse
    ];
  };

  win32-msgbox = eggDerivation {
    name = "win32-msgbox-1.1";

    src = fetchegg {
      name = "win32-msgbox";
      version = "1.1";
      sha256 = "0b5l39kzs53yy65w17l27lrzl8pfgnhznkfc10p476hqmb2p55gh";
    };

    buildInputs = [
      
    ];
  };

  wmiirc = eggDerivation {
    name = "wmiirc-0.5";

    src = fetchegg {
      name = "wmiirc";
      version = "0.5";
      sha256 = "0v3gsvl9dfwahplb1ym334br4i5s6kf1d8pyphz0hx1kn9glwkry";
    };

    buildInputs = [
      nine-p
      unix-sockets
    ];
  };

  x11-colors = eggDerivation {
    name = "x11-colors-1.0";

    src = fetchegg {
      name = "x11-colors";
      version = "1.0";
      sha256 = "0bi15kdmkxj3acr07zic5q0p79yshvn7zi1xg3mk0cfzz12vx052";
    };

    buildInputs = [
      matchable
    ];
  };

  x11-keysyms = eggDerivation {
    name = "x11-keysyms-0.2";

    src = fetchegg {
      name = "x11-keysyms";
      version = "0.2";
      sha256 = "0zf1b90np5iz38zkv8zawf8v05q13dpl7vcmq4xbf072rl7c4qj8";
    };

    buildInputs = [
      
    ];
  };

  xbmc-api = eggDerivation {
    name = "xbmc-api-0.1.1";

    src = fetchegg {
      name = "xbmc-api";
      version = "0.1.1";
      sha256 = "0igjgwj0d5ifx5qibgr15hbfd5w72xikmyg1pkm7sdnf8sadrrcv";
    };

    buildInputs = [
      
    ];
  };

  xft = eggDerivation {
    name = "xft-0.1";

    src = fetchegg {
      name = "xft";
      version = "0.1";
      sha256 = "0dh1c3fbj6lnm25vkp95fnqv3qhyjwfw308gjyrjf49vsfvrhb8a";
    };

    buildInputs = [
      foreigners
      xtypes
      pkgs.pkgconfig
      pkgs.xlibs.libXft
    ];
  };

  xlib = eggDerivation {
    name = "xlib-1.2";

    src = fetchegg {
      name = "xlib";
      version = "1.2";
      sha256 = "0j92ifmsn5y1d5vj3kphg1fnp2dfbir7y2hqzkrgsq95sq0wcbgy";
    };

    buildInputs = [
      matchable
      pkgs.xlibs.libX11
    ];
  };

  xml-rpc = eggDerivation {
    name = "xml-rpc-2.0.2";

    src = fetchegg {
      name = "xml-rpc";
      version = "2.0.2";
      sha256 = "1yi5zln9ls663i904kqy0ix4vdwsvq6k7s5f16rnrw143afrxdix";
    };

    buildInputs = [
      base64
      http-client
      intarweb
      ssax
      sxpath
    ];
  };

  xosd = eggDerivation {
    name = "xosd-1.7";

    src = fetchegg {
      name = "xosd";
      version = "1.7";
      sha256 = "18mnvmz8ax96vavdch67xqhrr2w25vphggfijggmqsn3q21szbn7";
    };

    buildInputs = [
      easyffi
      pkgs.libxosd
    ];
  };

  xtypes = eggDerivation {
    name = "xtypes-0.1a2";

    src = fetchegg {
      name = "xtypes";
      version = "0.1a2";
      sha256 = "197xx0rz5lzdyqm7lj4k8mcwjzdd8jc67ycrnfgbc41iivixabjc";
    };

    buildInputs = [
      foreigners
      pkgs.xlibs.libX11
      pkgs.xlibs.libXrender
    ];
  };

  yahoo-finance = eggDerivation {
    name = "yahoo-finance-0.2.0";

    src = fetchegg {
      name = "yahoo-finance";
      version = "0.2.0";
      sha256 = "0k90ib0pm8lnbvri0zml1vjic80wg5l0pmg1dv7k7axmzcpsvd1g";
    };

    buildInputs = [
      csv-xml
      uri-common
      intarweb
      http-client
    ];
  };

  yaml = eggDerivation {
    name = "yaml-0.1.2";

    src = fetchegg {
      name = "yaml";
      version = "0.1.2";
      sha256 = "15zjrcbh20d6gq1iq4wpx4cqz6zsafr7in65g5r7jm6nkza3vhf9";
    };

    buildInputs = [
      sql-null
      pkgs.pkgconfig
      pkgs.libyaml
    ];
  };

  yasos = eggDerivation {
    name = "yasos-1.4";

    src = fetchegg {
      name = "yasos";
      version = "1.4";
      sha256 = "0h9n5jbwaslnpxavmwyxdb5v9yx73w4rryfb8n259w1br788nlmr";
    };

    buildInputs = [
      
    ];
  };

  yelp = eggDerivation {
    name = "yelp-1.0.4";

    src = fetchegg {
      name = "yelp";
      version = "1.0.4";
      sha256 = "1jxry8547ikj1ylln1fxks6ihvmvsraqka1kric33afli1wjqcsh";
    };

    buildInputs = [
      json
      http-client
    ];
  };

  z3 = eggDerivation {
    name = "z3-1.44";

    src = fetchegg {
      name = "z3";
      version = "1.44";
      sha256 = "16ayp4zkgm332q4bmjj22acqg197aqp6d8ifyyjj205iv6k0f3x4";
    };

    buildInputs = [
      bind
    ];
  };

  zlib = eggDerivation {
    name = "zlib-0.5.1";

    src = fetchegg {
      name = "zlib";
      version = "0.5.1";
      sha256 = "1d9m8nh993fl9kvrq3k92hvqrf5mjlvgaw71l7hl87sysxispva6";
    };

    buildInputs = [
      foreigners
      miscmacros
      pkgs.zlib
    ];
  };

  zmq = eggDerivation {
    name = "zmq-0.1.4";

    src = fetchegg {
      name = "zmq";
      version = "0.1.4";
      sha256 = "04d218xmq06281s0b8c5d5w3qrz1vx1hwlirwzkhslihcpdbbw23";
    };

    buildInputs = [
      foreigners
      pkgs.zeromq2
    ];
  };
}


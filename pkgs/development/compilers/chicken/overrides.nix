{ stdenv }:
let
  broken = {
    allegro = true;
    augeas = true;              # augeas isn't packaged
    debug = true;               # circular dep with cock?
    epeg = true;
    git = true;
    hfs-plus = true;
    srfi-19 = true;             # (install-srfi29-bundle)
    glpg = true;
    macosx = true;
    xosd = true;                # libxosd isn't packaged
    win32-msgbox = true;
    setup-helper-cock = true;   # obsolete
    sundials = true;            # sundials isn't packaged
    stemmer = true;             # libstemmer / snowball isn't packaged
    raspberry-pi-gpio = true;   # wiringPi isn't packaged
  };
  sdlPrebuild = egg: ''
    SDL_BASE_REPO_PATH=$(csi -R files -e "(write (pathname-directory (##sys#find-extension \"sdl-base\" #f)))")
    substituteInPlace ${egg}.setup \
      --replace ",(repository-path)" "$SDL_BASE_REPO_PATH"
  '';
in
rec {
  glfw3 = {
    preBuild = ''
      substituteInPlace glfw3.setup \
        --replace "-l:libglfw.so.3" "-lglfw"
    '';
  };

  qt = {
    preBuild = ''
      export QTDIR=$(expr match "$(pkg-config --libs-only-L QtCore)" "-L\([^ ]\+\)")/..
    '';
  };

  qt-light = qt;

  sdl-ttf = {
    preBuild = sdlPrebuild "sdl-ttf";
  };

  sdl-img = {
    preBuild = sdlPrebuild "sdl-img";
  };

  setup-helper = {
    preBuild = ''
      substituteInPlace setup-helper.setup \
        --replace "(chicken-home)" \"$out/share/chicken/\"
    '';
  };

  seulex = {
    preBuild = ''
      export NIX_LDFLAGS=-L"$(dirname `gfortran --print-file-name libgfortran.so`)";
    '';
  };

  svn-client = {
    preBuild = ''
      SVN_INCLUDE_DIR=$(dirname -- "$(which svn)")/../include/subversion-1
      CSC_OPTIONS="$(apr-1-config --includes) $(apu-1-config --includes) -I$SVN_INCLUDE_DIR $CSC_OPTIONS"
    '';
  };
} // stdenv.lib.mapAttrs (k: v: { meta.broken = v; }) broken

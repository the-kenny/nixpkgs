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
    sundials = true;            # sundials isn't packaged
    stemmer = true;             # libstemmer / snowball isn't packaged
  };
in
{
  glfw3 = {
    preBuild = ''
      substituteInPlace glfw3.setup \
        --replace "-l:libglfw.so.3" "-lglfw"
    '';
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
    '';
  };
} // stdenv.lib.mapAttrs (k: v: { meta.broken = v; }) broken

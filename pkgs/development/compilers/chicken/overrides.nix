{ stdenv }:
let
  broken = {
    allegro = true;
    augeas = true;              # augeas isn't packaged
    debug = true;               # circular dep with cock?
    epeg = true;
    srfi-19 = true;             # (install-srfi29-bundle)
    glpg = true;
    macosx = true;
    win32-msgbox = true;
  };
in
{
  setup-helper = {
    preBuild = ''
      substituteInPlace setup-helper.setup \
        --replace "(chicken-home)" \"$out/share/chicken/\"

        cat setup-helper.setup
    '';
  };
} // stdenv.lib.mapAttrs (k: v: { meta.broken = v; }) broken

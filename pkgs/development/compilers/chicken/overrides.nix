{ stdenv }:
let
  broken = {
    allegro = true;
    epeg = true;
    glpg = true;
    macosx = true;
    hexgrid = true;
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

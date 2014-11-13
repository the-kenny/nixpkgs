{ stdenv }:
let
  broken = {
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

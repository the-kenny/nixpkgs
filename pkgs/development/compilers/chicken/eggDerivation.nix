{ stdenv, fetchegg, chicken, makeWrapper }:
{ name, src
, buildInputs ? []
, chickenInstallFlags ? []
, cscOptions          ? []
, ...} @ args:

let
  libPath = "${chicken}/var/lib/chicken/${toString chicken.binaryVersion}/";
  overrides = import ./overrides.nix { inherit stdenv; };
  lib = stdenv.lib;
  baseName = (builtins.parseDrvName name).name;
  override = if builtins.hasAttr baseName overrides
   then
     builtins.getAttr baseName overrides
   else
     {};
in
stdenv.mkDerivation ({
  name = "chicken-${name}";
  propagatedBuildInputs = buildInputs ++ [ chicken ];
  propagatedUserEnvPkgs = buildInputs ++ [ chicken ];
  buildInputs = [ makeWrapper ];

  CSC_OPTIONS = stdenv.lib.concatStringsSep " " cscOptions;
  CHICKEN_REPOSITORY = libPath;

  # We override the default buildPhase because some eggs ship a
  # Makefile which we need to skip over.
  buildPhase = ''
    runHook preBuild
    echo "doing nothing in buildPhase - build happens in installPhase"
    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    # Some eggs need to be able to access modules installed by
    # themselves at compile time so we add the current egg's
    # repository path to CHICKEN_REPOSITORY_EXTRA here
    EGG_CHICKEN_REPOSITORY="$out/lib/chicken/${toString chicken.binaryVersion}"
    mkdir -p $EGG_CHICKEN_REPOSITORY
    addToSearchPath CHICKEN_REPOSITORY_EXTRA "$EGG_CHICKEN_REPOSITORY"

    # We need the chicken-install wrapper to pass the -p option since
    # CHICKEN_INSTALL_PREFIX seems to be broken and some eggs' setup
    # file call chicken-install again (e.g. schematic's).
    NIX_SUPPORT_BIN=$out/nix-support/bin/
    mkdir -p "$NIX_SUPPORT_BIN"
    makeWrapper ${chicken}/bin/chicken-install $NIX_SUPPORT_BIN/chicken-install --add-flags "-p $out"

    # Finally, build and install the egg
    PATH="$NIX_SUPPORT_BIN:$PATH" chicken-install ${stdenv.lib.concatStringsSep " " chickenInstallFlags}

    # Remove wrapper again
    rm $NIX_SUPPORT_BIN/chicken-install
    rmdir --ignore-fail-on-non-empty -p $NIX_SUPPORT_BIN

    # Wrap all installed programs appropriately
    for f in $out/bin/*
    do
      wrapProgram $f \
        --set CHICKEN_REPOSITORY $CHICKEN_REPOSITORY \
        --prefix CHICKEN_REPOSITORY_EXTRA : "$CHICKEN_REPOSITORY_EXTRA" \
        --prefix CHICKEN_INCLUDE_PATH \; \"$CHICKEN_INCLUDE_PATH\;$out/share/chicken\" \
        --prefix PATH : "$out/bin:${chicken}/bin:$CHICKEN_REPOSITORY_EXTRA:$CHICKEN_REPOSITORY"
    done

    runHook postInstall
  '';


  meta = {
    platforms = lib.platforms.all;
  };
} // (builtins.removeAttrs args ["name" "buildInputs"]) // override)

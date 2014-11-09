{
  setup-helper = {
    preBuild = ''
      substituteInPlace setup-helper.setup \
        --replace "(chicken-home)" \"$out/share/chicken/\"

        cat setup-helper.setup
    '';
  };
}

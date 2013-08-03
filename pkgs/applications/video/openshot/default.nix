{ stdenv, fetchbzr, buildPythonPackage, python, pythonPackages, mlt, sox, ffmpeg }:

buildPythonPackage rec {
  name = "openshot-${version}";
  version = "1.4.4-dev";

  src = fetchbzr {
    url = "lp:openshot";
    revision = "740";
    sha256 = "1h66k2kkx8wkri96dqqagqw18zwdzs1hqpby67yscsh1ckcbykad";
  };

  propagatedBuildInputs = [
    python
    pythonPackages.pygtk
    pythonPackages.pyxdg
    pythonPackages.pillow
    pythonPackages.pygoocanvas
    mlt
    sox
    ffmpeg
  ];

  doCheck = false;
  dontStrip = true;

  postInstall = ''
    python setup.py build

    # Copy correct scripts to bin/
    cp -v bin/* $out/bin/
  '';
}

{ stdenv, fetchurl, buildPythonPackage, python, pythonPackages, mlt, sox, ffmpeg }:

buildPythonPackage rec {
  name = "openshot-${version}";
  version = "1.4.3";

  src = fetchurl {
    url = "https://launchpad.net/openshot/1.4/${version}/+download/${name}.tar.gz";
    sha256 = "1l2rp353j7kffrdsh96fg6my6syf4cnlym4r6lkb0rw6kb2z3ssv";
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

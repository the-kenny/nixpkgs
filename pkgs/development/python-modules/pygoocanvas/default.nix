{ stdenv, fetchurl, python, pkgconfig, pygobject, pygtk, goocanvas, pycairo }:

stdenv.mkDerivation rec {
  name = "pygoocanvas-0.14.1";

  src = fetchurl {
    url = "http://ftp.gnome.org/pub/GNOME/sources/pygoocanvas/0.14/${name}.tar.bz2";
    sha256 = "1xdkzyg05ncsj0jdshaqi5vx5mxdpa4pqs7riszd8azbcbf583v4";
  };

  buildInputs = [
    python
    pkgconfig
    pycairo
    pygobject
    pygtk
    goocanvas
  ];

  preConfigure = ''
    substituteInPlace configure \
      --replace "variable=codegendir pygtk-2.0" "variable=codegendir pygobject-2.0" 
  '';

  meta = {
    description = "";
    homepage = "";
    license = "";
  };
}

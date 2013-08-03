{ stdenv, fetchurl, gtk, cairo, glib, pkgconfig, python }:

stdenv.mkDerivation rec {
  name = "goocanvas-0.14";

  src = fetchurl {
    url = "http://ftp.gnome.org/pub/GNOME/sources/goocanvas/0.14/${name}.tar.bz2";
    sha256 = "1nrkwbp3vpijpdv2yv0kdmbg6f8faw1mrcjqv27ssg61q1xc750v";
  };

  buildInputs = [ stdenv gtk cairo glib pkgconfig python ];

  meta = {
    description = "Canvas widget for GTK+ based on the the Cairo 2D library";
    homepage = http://goocanvas.sourceforge.net/;
    license = ["GPL" "LGPL"];
  };
}

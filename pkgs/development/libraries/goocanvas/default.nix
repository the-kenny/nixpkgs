{ stdenv, fetchurl, gtk, cairo, glib, pkgconfig, python }:

stdenv.mkDerivation rec {
  name = "goocanvas-0.15";

  src = fetchurl {
    url = "http://ftp.gnome.org/pub/GNOME/sources/goocanvas/0.15/${name}.tar.bz2";
    sha256 = "0b4093vnvmzyqhmlmpjj4iivkircvmz5gvl1jddpqikyfni25daq";
  };

  buildInputs = [ stdenv gtk cairo glib pkgconfig python ];

  meta = {
    description = "Canvas widget for GTK+ based on the the Cairo 2D library";
    homepage = http://goocanvas.sourceforge.net/;
    license = ["GPL" "LGPL"];
  };
}

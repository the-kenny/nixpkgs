{ stdenv, fetchurl, gtk3, cairo, glib, pkgconfig, python, pygobject}:
 
stdenv.mkDerivation rec {
  name = "goocanvas-2.0.1";

  src = fetchurl {
    url = "http://ftp.gnome.org/pub/GNOME/sources/goocanvas/2.0/${name}.tar.bz2";
    sha256 = "0wvp089r5fvbr43ky31k5x5lhnqrwriyp0r6zvsx862k68q1qjg7";
  };

  buildInputs = [ stdenv gtk3 cairo glib pkgconfig python pygobject ];

  preConfigure = ''
    for f in $(find -name "Makefile.in")
    do
      substituteInPlace $f \
        --replace "@pyoverridesdir@" "@prefix@/lib/${python.libPrefix}/site-packages/"
    done
  '';

  configureFlags = [ "--enable-python=yes" ];
  
  meta = { 
    description = "Canvas widget for GTK+ based on the the Cairo 2D library";
    homepage = http://goocanvas.sourceforge.net/;
    license = ["GPL" "LGPL"];
  };
}

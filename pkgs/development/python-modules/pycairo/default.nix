{ stdenv, fetchurl, python, pkgconfig, cairo, x11 }:

stdenv.mkDerivation rec {
  name = "pycairo-1.10.0";
  src = fetchurl {
    url = "http://cairographics.org/releases/${name}.tar.gz";
    sha256 = "0q18hd4ai4raljlvd76ylgi30kxpr2qq83ka6gzwh0ya8fcmjlig";
  };

  buildInputs = [ python pkgconfig cairo x11 ];
}

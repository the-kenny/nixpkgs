{ stdenv, fetchurl, pkgconfig, libusb1 }:

stdenv.mkDerivation {
  name = "dfu-util-0.7";

  src = fetchurl {
    url = "http://dfu-util.gnumonks.org/releases/dfu-util-0.7.tar.gz";
    sha256 = "1aryxj02scwaqph15iw1kphj5qvynkh0bnka98hg7ygvi5a2lapm";
  };

  buildInputs = [
    pkgconfig
    libusb1
  ];

  meta = {
    homepage = http://dfu-util.gnumonks.org/;
    description = "Device Firmware Upgrade Utilities";
    longDescription = ''
      dfu-util is the host side implementation of the DFU 1.0 and DFU
      1.1 specifications of the USB forum. DFU is intended to download and
      upload firmware to devices connected over USB. It ranges from small
      devices like micro-controller boards up to mobile phones.
    '';
    license = "GPLv2";
    platforms = stdenv.lib.platforms.linux; # libusb is limited to linux
    maintainers = [ stdenv.lib.maintainers.the-kenny ];
  };
}

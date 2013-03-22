{ stdenv, fetchurl, coreutils, gnumake, gcc, gnutar, bzip2, gzip
  , gnugrep, gnused, gawk, diffutils, patch, m4, gmp, mpfr }:

stdenv.mkDerivation {
  name = "gcc-arm-none-eabi";

  src = fetchurl {
    url =  https://launchpadlibrarian.net/126639393/gcc-arm-none-eabi-4_7-2012q4-20121208-src.tar.bz2;
    sha256 = "1aa02jy30fb9l8y9yjcz8j6w8bff35qj92gz5x1mxsnpk6j1gwg6";
  };

  buildInputs = [
    coreutils gnumake gnutar bzip2 gzip
    gnugrep gnused gawk diffutils patch m4
    gmp mpfr
  ];

  unpackPhase = ''
    tar xjf $src
    cd gcc-arm-none-eabi*/src
    find -name '*.tar.*' | xargs -I% tar -xf %
    cd zlib-1.2.5
    patch -p1 < ../zlib-1.2.5.patch
    cd ../../
  '';

  buildPhase = ''
    patchShebangs .
    ./build-prerequisites.sh --skip_mingw32
    ./build-toolchain.sh --skip_mingw32
  '';
  
  # # srcZlib = fetchurl {
  # #   url = "mirror://sourceforge/libpng/zlib/1.2.5/zlib-1.2.5.tar.gz";
  # #   sha256 = "0n7rlgvjn73pyil3s1l6p77m7wkc809n934rnzxv1b1za4pfar30";
  # # };
  
  # srcBinutils = fetchurl {
  #   url = "mirror://gnu/binutils/binutils-2.21.1.tar.bz2";
  #   sha256 = "0m7nmd7gc9d9md43wbrv65hz6lbi2crqwryzpigv19ray1lzmv6d";
  # };

  # srcGCC = fetchurl {
  #   url = "mirror://gcc/releases/gcc-4.6.3/gcc-core-4.6.3.tar.bz2";
  #   sha256 = "1hai090f0svf886nyhn4glmfw54v9lz88w2izkx5iqhd3j400gi8";
  # };

  # # srcGCCGPP = fetchurl {
  # #   url = "mirror://gcc/releases/gcc-4.6.3/gcc-g++-4.6.3.tar.bz2";
  # #   sha256 = "1s199gb6p65r5k69cdfqqcz5hgifw9bhyj65n2b91s80x4rwgq5k";
  # # };

  # srcNewlib = fetchurl {
  #   url = ftp://sourceware.org/pub/newlib/newlib-1.20.0.tar.gz;
  #   sha256 = "14pn7y1dm8vsm9lszfgkcz3sgdgsv1lxmpf2prbqq9s4fa2b4i66";
  # };

  # phases = "doAll";

  # # don't call any wired $buildInputs/nix-support/* scripts or such. This makes the build fail 
  # builder = writeTextFile {
  #   name = "armbinutilsgccnewlib-builder-script";
  #   text =  ''
  #   PATH=${coreutils}/bin:${gnumake}/bin:${gcc}/bin:${gnutar}/bin:${bzip2}/bin:${gnugrep}/bin:${gnused}/bin:${gawk}/bin:${diffutils}/bin:${patch}/bin:${gzip}/bin:${zlib}/bin
  #   # that's all a bit too hacky...!
  #   for i in `cat ${gcc}/nix-support/propagated-user-env-packages`; do
  #     echo adding $i
  #     PATH=$PATH:$i/bin
  #   done
  #   mkdir -p "$out"
  #   export > env-vars

  #   for i in "${gmp}" "${mpfr}" "${mpc}" "$out", "${zlib}"; do
  #     export NIX_CFLAGS_COMPILE="$NIX_CFLAGS_COMPILE -I$i/include "
  #     export NIX_LDFLAGS="$NIX_LDFLAGS -L$i/lib "
  #   done

  #   # important, without this gcc won't find the binutils executables
  #   PATH=$PATH:$out/bin

  #   prefix=$out

  #   cd $TMP
  #   echo "Unpacking $srcBinutils"
  #   tar jxf $srcBinutils
  #     cd binutils-*/
  #     # mkdir obj-arm
  #     # cd obj-arm
  #     ./configure --target=arm-none-eabi --prefix="$prefix" --disable-nls --enable-multilib --enable-interwork
  #     make $MAKE_FLAGS
  #     make install

  #   # cd $TMP
  #   # echo "Unpacking $srcZlib"
  #   # tar xf $srcZlib
  #   #   cd zlib*
  #   #   # mkdir obj-arm
  #   #   # cd obj-arm
  #   #   ./configure --prefix="$prefix" --static
  #   #   make $MAKE_FLAGS
  #   #   make install
    
  #   cd $TMP
  #   tar jxf $srcGCC
  #   # tar jxf $srcGCCGPP
  #     cd gcc-*
  #     # mkdir obj-arm
  #     # cd obj-arm
  #     ./configure --target=arm-none-eabi --prefix="$prefix" --enable-languages="c" \
  #                                                            --disable-decimal-float \
  #                                                            --disable-libffi \
  #                                                            --disable-libgomp \
  #                                                            --disable-libmudflap \
  #                                                            --disable-libquadmath \
  #                                                            --disable-libssp \
  #                                                            --disable-libstdcxx-pch \
  #                                                            --disable-lto \
  #                                                            --disable-nls \
  #                                                            --disable-shared \
  #                                                            --disable-threads \
  #                                                            --disable-tls \
  #                                                            --with-newlib \
  #                                                            --with-gnu-as \
  #                                                            --with-gnu-ld \
  #                                                            --without-headers
                                                             
  #     make $MAKE_FLAGS
  #     make install

  #   cd $TMP
  #     tar xf $srcNewlib

  #     cd newlib*
  #     ./configure --prefix="$prefix" --build=`./config.guess` --host=arm* --enable-interwork --enable-multilib
  #     make $MAKE_FLAGS
  #     make install
  #   '';
  # };

  meta = { 
      description = "avr gcc developement environment including binutils, avr-gcc and avr-libc";
      # I've tried compiling the packages separately.. too much hassle. This just works. Fine.
      license =  ["GPL" "LGPL"]; # see single packages ..
      homepage = []; # dito
  };
}



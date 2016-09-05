{ stdenv, callPackage, rustPlatform,
  targets ? [], targetToolchains ? [], targetPatches ? [] }:

rec {
  rustc = callPackage ./rustc.nix {
    shortVersion = "master-1.13.0";
    forceBundledLLVM = false;
    configureFlags = [ "--release-channel=nightly" ];
    srcRev = "2dbf600d159a5c65b53419f1669834d1f81496a7";
    srcSha = "0mc4pjjz5pdrxwhsva815xp0zsvgpb6d5accxzbzl2f2isaaxnbm";
    patches = [
      ./patches/disable-lockfile-check.patch
    ] ++ stdenv.lib.optional stdenv.needsPax ./patches/grsec.patch;
    inherit targets;
    inherit targetPatches;
    inherit targetToolchains;
    inherit rustPlatform;
  };

  cargo = callPackage ./cargo.nix rec {
    version = "master-2016-07-25";
    srcRev = "f09ef68cc47956ccc5f99212bdcdd15298c400a0";
    srcSha = "1r6q9jd0fl6mzhwkvrrcv358q2784hg51dfpy28xgh4n61m7c155";
    depsSha256 = "1p1ygabg9k9b0azm0mrx8asjzdi35c5zw53iysba198lli6bhdl4";

    inherit rustc; # the rustc that will be wrapped by cargo
    inherit rustPlatform; # used to build cargo
  };
}

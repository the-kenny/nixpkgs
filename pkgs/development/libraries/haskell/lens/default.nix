{ cabal, bifunctors, comonad, comonadsFd, comonadTransformers
, contravariant, deepseq, distributive, doctest, filepath
, genericDeriving, hashable, HUnit, MonadCatchIOTransformers, mtl
, nats, parallel, profunctorExtras, profunctors, QuickCheck
, reflection, semigroupoids, semigroups, simpleReflect, split
, tagged, testFramework, testFrameworkHunit
, testFrameworkQuickcheck2, testFrameworkTh, text, transformers
, transformersCompat, unorderedContainers, vector, void
}:

cabal.mkDerivation (self: {
  pname = "lens";
  version = "3.8.7.3";
  sha256 = "0z28vv3k6zg2zsd3pb1vlhv75q0zjlh4zf1md77cviyyljwc0j09";
  buildDepends = [
    bifunctors comonad comonadsFd comonadTransformers contravariant
    distributive filepath genericDeriving hashable
    MonadCatchIOTransformers mtl parallel profunctorExtras profunctors
    reflection semigroupoids semigroups split tagged text transformers
    transformersCompat unorderedContainers vector void
  ];
  testDepends = [
    deepseq doctest filepath genericDeriving HUnit mtl nats parallel
    QuickCheck semigroups simpleReflect split testFramework
    testFrameworkHunit testFrameworkQuickcheck2 testFrameworkTh text
    transformers unorderedContainers vector
  ];
  doCheck = false;
  meta = {
    homepage = "http://github.com/ekmett/lens/";
    description = "Lenses, Folds and Traversals";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})

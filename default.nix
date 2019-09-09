{ nixpkgs ? import (fetchTarball https://github.com/NixOS/nixpkgs/archive/29200f051766af17924fdcf9f9cb25c73591d509.tar.gz) {}, compiler ? "ghcjs" }:

let
  inherit (nixpkgs) pkgs;

  hp = if compiler == "default"
                    then pkgs.haskellPackages
                    else pkgs.haskell.packages.${compiler};

  haskellPackages = hp.override (old: {
    overrides = pkgs.lib.composeExtensions (old.overrides or (_: _: {})) (self: super: {
      QuickCheck = pkgs.haskell.lib.dontCheck super.QuickCheck;
   });
  });

  react-native-hs = { mkDerivation, base, deepseq, ghcjs-base, react-hs, stdenv, nodejs,
        text, time, transformers, containers, network-uri, semigroups
      }:
      mkDerivation {
        pname = "react-native-hs";
        version = "0.1.1";
        src = ./.;
        libraryHaskellDepends = [
          base deepseq ghcjs-base react-hs text time transformers containers network-uri semigroups
        ];
        buildDepends = [pkgs.haskellPackages.cabal-install pkgs.haskellPackages.Cabal];
        homepage = "https://github.com/jyrimatti/react-native-hs";
        description = "React-native support for react-hs";
        license = stdenv.lib.licenses.mit;
      };

  ghcjsbase = if compiler == "ghcjs" || compiler == "ghcjs84" || compiler == "ghcjs86"
                 then haskellPackages.ghcjs-base
                 else haskellPackages.ghcjs-base-stub;

  # my fork, until it gets to Hackage
  react-hs-forked = { fetchgit, stdenv, mkDerivation,
        aeson, base, bytestring, ghcjs-base, mtl, string-conversions,
        template-haskell, text, time, unordered-containers
     }:
     mkDerivation {
       pname = "react-hs";
       version = "0.1.1";
       src = fetchgit {
         url = "https://github.com/jyrimatti/react-hs.git";
         sha256 = "0s7c15pmfhlccr6qgl6jn6izbvnqchh739i0h0sx1yiaarqwmzwy";
         rev = "9390f850861102e84e38514a577ce7f3b1aac23f";
       };
       postUnpack = "sourceRoot=$sourceRoot/react-hs";
       libraryHaskellDepends = [
         aeson base bytestring ghcjs-base mtl string-conversions
         template-haskell text time unordered-containers
       ];
       homepage = "https://github.com/jyrimatti/react-hs";
       description = "A binding to React based on the Flux application architecture for GHCJS";
       license = stdenv.lib.licenses.bsd3;
     };

  react-hs = haskellPackages.callPackage react-hs-forked { ghcjs-base = ghcjsbase; };

  drv = haskellPackages.callPackage react-native-hs { react-hs = react-hs; ghcjs-base = ghcjsbase; };

in

  if pkgs.lib.inNixShell then drv.env else drv

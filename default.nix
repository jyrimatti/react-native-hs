{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghcjs" }:

let

  inherit (nixpkgs) pkgs;

  react-native-hs = { mkDerivation, base, deepseq, ghcjs-base, react-hs, stdenv, nodejs,
        text, time, transformers, containers, http-common, network-uri, semigroups
      }:
      mkDerivation {
        pname = "react-native-hs";
        version = "0.1.1";
        src = ./.;
        libraryHaskellDepends = [
          base deepseq ghcjs-base react-hs text time transformers containers http-common network-uri semigroups
        ];
        buildDepends = [pkgs.haskellPackages.cabal-install pkgs.haskellPackages.Cabal] ++
          (if compiler == "default"
             then with haskellPackages; [nodejs hlint stack intero hasktags pointfree hdevtools stylish-haskell hindent (hoogle.override { process-extras = pkgs.haskell.lib.dontCheck process-extras; }) (apply-refact.override { ghc-exactprint = pkgs.haskell.lib.dontCheck ghc-exactprint; })]
             else []);
        homepage = "https://github.com/jyrimatti/react-native-hs";
        description = "React-native support for react-hs";
        license = stdenv.lib.licenses.mit;
      };
  
  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  ghcjsbase = if compiler == "default"
                 then haskellPackages.ghcjs-base-stub
                 else haskellPackages.ghcjs-base;

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

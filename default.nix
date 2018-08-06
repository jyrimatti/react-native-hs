{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghcjsHEAD" }:

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
        buildDepends = [pkgs.haskellPackages.cabal-install] ++
          (if compiler == "default"
             then with pkgs.haskellPackages; [nodejs hlint stack intero hasktags pointfree hdevtools stylish-haskell hindent (hoogle.override { process-extras = pkgs.haskell.lib.dontCheck process-extras; }) (apply-refact.override { ghc-exactprint = pkgs.haskell.lib.dontCheck ghc-exactprint; })]
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
         sha256 = "1bw0y3lii4fg0z8jgirg8hzrmrpwrl7gbgkajffs5578hzn13jc0";
         rev = "85e369432b1a3feb78279784e0ed6e7ffc958fbd";
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

{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    buildJanetPackage.url = "github:haruki7049/buildJanetPackage";
  };

  outputs = { nixpkgs, flake-utils, buildJanetPackage, ... }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        pkgs = import nixpkgs { inherit system; };
        lib = pkgs.lib;
        janetBuilder = import buildJanetPackage { inherit pkgs; };

        janet-cli = janetBuilder.buildJanetPackage {
          pname = "janet-cli";
          version = "dev";
          src = lib.cleanSource ./.;
          depsFile = ./deps.nix;
        };
      in
      {
        devShells.default = pkgs.mkShell {
          packages = [
            pkgs.janet
            pkgs.jpm
          ];
        };

        packages = {
          inherit janet-cli;
          default = janet-cli;
        };
      });
}

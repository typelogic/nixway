{ nixpkgs ? import <nixpkgs> {} }:
let
  inherit (nixpkgs) pkgs;
  nixPackages = [pkgs.hello pkgs.lcov pkgs.poco pkgs.gtest pkgs.clang-tools];
in
  pkgs.stdenv.mkDerivation {
    name = "nixway";
    buildInputs = nixPackages;
  }

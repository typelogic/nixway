{ nixpkgs ? import <nixpkgs> {} }:
let
  inherit (nixpkgs) pkgs;
  xxx = [pkgs.hello pkgs.lcov pkgs.poco pkgs.gtest pkgs.clang-tools];
in
  pkgs.stdenv.mkDerivation {
    name = "nixway";
    buildInputs = xxx;
  }

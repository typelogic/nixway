{ nixpkgs ? import <nixpkgs> {  } }:
 
let
  pkgs = [
    nixpkgs.nodejs
    nixpkgs.yarn
    nixpkgs.stack
  ];
 
in
  nixpkgs.stdenv.mkDerivation {
    name = "env";
    buildInputs = pkgs;
  }

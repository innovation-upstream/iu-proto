{ pkgs ? import <nixpkgs> {}, ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    bazel_4
    (callPackage ./nix/buf {})
  ];
}

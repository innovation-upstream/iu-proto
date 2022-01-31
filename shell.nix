{ pkgs ? import <nixpkgs> {}, ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    (callPackage ./nix/buf {})
    bazel_4
    protoc-gen-go
    protoc-gen-go-grpc
    go_1_17
  ];
}

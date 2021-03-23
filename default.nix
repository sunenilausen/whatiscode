{ pkgs ? import <nixpkgs> {}
}:
with import <nixpkgs> {};

let
  nixpkgs-unstable = import <nixpkgs-unstable> {};
  nixpkgs-20-03 = import <nixos-20.03> {};
in
mkShell {
  buildInputs = [
    nixpkgs-20-03.ruby_2_7
    nixpkgs-20-03.nodejs
    nixpkgs-20-03.yarn
    nixpkgs-20-03.python
    libxml2
    libxslt
    zlib
    bzip2
    openssl
    pkgconfig
    postgresql
    nodejs
    google-chrome
    nixpkgs-unstable.chromedriver
    heroku
  ];
}

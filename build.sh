#!/bin/sh

# NIXPKGS_COMMIT_HASH="e7752db2fb6c5e05f1de2b275535dbde07d30090"
# -I nixpkgs=https://github.com/NixOS/nixpkgs-channels/archive/$NIXPKGS_COMMIT_HASH.tar.gz \

nix-build \
    --show-trace \
    -A system -A config.system.build.tarball \
    ./nixos.nix 

cp ./result-2/tarball/nixos-system-x86_64-linux.tar.gz $1
#!/bin/sh

set -e

# Deleting previous builds
rm -rf result
rm -rf result-2

# Building latest tarball
nix-build \
    --show-trace \
    -A system \
    -A config.system.build.tarball \
    ./nixos.nix 

# Putting the tarball wherever wanted
cp ./result-2/tarball/nixos-system-x86_64-linux.tar.gz $1

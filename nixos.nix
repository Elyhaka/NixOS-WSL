let
  # Commit hash used to lock the built image to a certain version
  # of the nixpkgs repository.
  # Current version: Latest commit on the 20.03 branch as 2020/06/01
  rev = "e7752db2fb6c5e05f1de2b275535dbde07d30090";

  pkgs = import (builtins.fetchTarball {
    name = "nixos-unstable-2020-06-01";
    url = "http://github.com/nixos/nixpkgs-channels/archive/${rev}.tar.gz";
    sha256 = "1lx2wdagigq5c7qp1fcy25ccpfvz5cl5x0b9rhnz1x409vn7icx1";
  }) {};
in
import "${pkgs.path}/nixos" {
  configuration = {
    imports = [
      ./system/configuration.nix
      ./build-tarball.nix
    ];

    system.nixos.revision = rev;
  };

  system = "x86_64-linux";
}

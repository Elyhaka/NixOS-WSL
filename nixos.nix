import <nixpkgs/nixos> {
  configuration = {
    imports = [
      ./system/configuration.nix
      ./build-tarball.nix
    ];
  };

  system = "x86_64-linux";
}

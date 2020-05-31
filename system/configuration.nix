{ lib, pkgs, config, ... }:

{
  imports = [
    <nixpkgs/nixos/modules/profiles/minimal.nix>
    ./wsl
  ];
}

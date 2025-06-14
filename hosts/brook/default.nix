{ lib, inputs, pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./hardware.nix
    ./network.nix
    ./packages.nix
    ./services.nix
    ./system.nix
  ];

  system.stateVersion = "25.05";
}
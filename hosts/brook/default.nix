{ lib, inputs, pkgs, ... }:

{
  imports = [
    ../../modules/drivers
    ../../modules/core
    ./boot.nix
    ./hardware.nix
    ./network.nix
    ./packages.nix
    ./services.nix
    ./system.nix
  ];

  drivers.intel.enable = true;
  system.stateVersion = "25.05";
}
{ lib, inputs, pkgs, ... }:

{
  imports = [
    ../../modules/drivers
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
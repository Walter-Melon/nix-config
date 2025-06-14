{ config, lib, inputs, modulesPath, ... }:

{
  imports = [ 
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  fileSystems."/" = { 
    device = "/dev/disk/by-uuid/253daf03-af97-4f1b-bdb2-1d4444db23bd";
    fsType = "ext4";
  };

  fileSystems."/boot" = { 
    device = "/dev/disk/by-uuid/1965-EDD3";
    fsType = "vfat";
    options = [ "fmask=0077" "dmask=0077" ];
  };

  swapDevices = [ 
    { device = "/dev/disk/by-uuid/379cbded-69e9-4f7a-b496-785e4020fa87"; }
  ];

  hardware = {
    cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  };

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
}
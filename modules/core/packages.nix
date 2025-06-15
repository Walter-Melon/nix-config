{pkgs, ...}: {
  programs = {
    firefox.enable = false;
    hyprland.enable = true;
    dconf.enable = true;
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    killall # For Killing All Instances Of Programs
    pavucontrol # For Editing Audio Levels & Devices
    playerctl # Allows Changing Media Volume Through Scripts
    nwg-displays #configure monitor configs via GUI
  ];
}

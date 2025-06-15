{ inputs, ... }: {
  imports = [
    ./chromium.nix
    ./hyprland
    ./git.nix
    ./gtk.nix
    ./kitty.nix
    ./stylix.nix
    ./swaync.nix
    ./waybar/simple.nix
    ./qt.nix
    ./xdg.nix
  ];
}

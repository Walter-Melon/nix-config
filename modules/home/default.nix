{ inputs, ... }: {
  imports = [
    ./chromium.nix
    ./hyprland
    ./git.nix
    ./gtk.nix
    ./kitty.nix
    ./stylix.nix
    ./swaync.nix
    ./qt.nix
    ./xdg.nix
  ];
}

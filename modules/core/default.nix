{inputs, ...}: {
  imports = [
    ./chromium.nix
    ./stylix.nix
    inputs.stylix.nixosModules.stylix
  ];
}

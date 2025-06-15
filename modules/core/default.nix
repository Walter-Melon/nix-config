{inputs, ...}: {
  imports = [
    ./chromium.nix
    ./packages.nix
    ./stylix.nix
    inputs.stylix.nixosModules.stylix
  ];
}

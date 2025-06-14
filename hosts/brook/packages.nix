{ pkgs, inputs, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager

    # VSCode server hack
    inputs.vscode-server.nixosModules.default
    ({ config, pkgs, ... }: {
      services.vscode-server.enable = true;
    })
  ];

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    curl
    git
    htop
  ];

  programs.hyprland = {
   enable = true;
  };

  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    backupFileExtension = "backup";
    extraSpecialArgs = {inherit inputs;};
  };
}
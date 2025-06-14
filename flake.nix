{
  description = "NixOS configuration for me";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    stylix.url = "github:danth/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";

    # Needed to connect via ssh over VSCode
    vscode-server.url = "github:nix-community/nixos-vscode-server";
  };

  outputs = { nixpkgs, home-manager, ... } @ inputs:  
  {
    nixosConfigurations = {

      # Configuration for the Intel NUC
      brook = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/brook
          ./users/tv/nixos.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.users.tv = import ./users/tv/home.nix;
          }
        ];
      };
    };
  };
}
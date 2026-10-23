{
  description = "Configurazione NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      modules = [ 
        home-manager.nixosModules.home-manager 
        ./configuration.nix
        ./home.nix
        ./modules/base.nix
        ./modules/gnome.nix 
      ];
    };
  };
}

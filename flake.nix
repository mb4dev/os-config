{
  description = "Configurazione NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    import-tree.url = "github:vic/import-tree";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, import-tree, home-manager, ... }:
  {
    nixosConfigurations.desktop =
      nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./configuration.nix

          (import-tree ./modules/system)
          (import-tree ./modules/users)

          home-manager.nixosModules.home-manager

          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.matteo = {
              imports = [
                (import-tree ./modules/home)
              ];

              home.stateVersion = "26.05";
            };
          }
        ];
      };
  };
}

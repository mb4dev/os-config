{pkgs, ...} : {
  home-manager.useGlobalPkgs = true; 
  home-manager.useUserPackages = true;

  home-manager.backupFileExtension = "bak";


  home-manager.users.matteo.imports = [
    ./modules/home/base.nix
  ];

}
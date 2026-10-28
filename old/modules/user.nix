{...} : {
  flake.nixosModules.user = {pkgs, ...}: {
    users.users."matteo" = {
      isNormalUser = true;
      initialPassword = "matteo";
      description = "matteo";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [
      
      ];  
    #shell = pkgs.fish;
    };
  
  };
}
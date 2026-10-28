{pkgs,  ... }: {
  users.users.matteo = {
    isNormalUser = true;
    home = "/home/matteo";
    initialPassword = "matteo";

    extraGroups = [
      "wheel"
      "networkmanager"
    ];

    
    shell = pkgs.fish;
  };
}

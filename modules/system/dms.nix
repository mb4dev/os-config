{ inputs, pkgs, ... }:

{

	services.displayManager.dms-greeter = {
		enable = true; 
		
		compositor.name = "niri";
		configHome = "/home/matteo";
	
	};


 

  programs.dms-shell = {
    enable = true;

    package =
      inputs.dms.packages.${pkgs.stdenv.hostPlatform.system}.default;

    systemd.enable = true;
  };

  

}

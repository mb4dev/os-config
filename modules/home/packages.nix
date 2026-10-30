{pkgs, ...} : {
  home.packages = with pkgs; [
    eza 
    bat
    fd
    ripgrep
  ];

}

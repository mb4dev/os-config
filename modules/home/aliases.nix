{ ... } : {
  programs.fish.shellAliases = {
    ls = "eza -al --color=always --group-directories-first --icons=always";
    la = "eza -a --color=always --group-directories-first --icons=always";
    ll = "eza -l --color=always --group-directories-first --icons=always";
    lt = "eza -aT --color=always --group-directories-first --icons=always";

    cat = "bat";
    batp = "bat --paging=always";
    batn = "bat --style=numbers";


    rebuild = "sudo nixos-rebuild switch --flake ~/os-config#desktop";
    rebuild-test = "sudo nixos-rebuild test --flake ~/os-config#desktop";
    rebuild-build = "nixos-rebuild build --flake ~/os-config#desktop";

    gc = "sudo nix-collect-garbage -d";
  };


}

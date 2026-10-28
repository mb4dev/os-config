{ ... }: {
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-generations 7d";
  };
}

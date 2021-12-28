{ config, pkgs, ... }:
{
  system.stateVersion = "21.11";
  nixpkgs.config.allowUnfree = true;
  nix = {
    autoOptimiseStore = true;
    packages = pkgs.nixFlakes;
    extraOptions = ''
      expirimental-features = nix-command flakes
      '';
  };
}

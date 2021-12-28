{ config, pkgs, ... }:
{
  system.stateVersion = "21.11";
  nixpkgs.config.allowUnfree = true;
  nix = {
    autoOptimiseStore = true;
  };
}

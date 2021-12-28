{ config, pkgs, ... }:
{
  networking = {
    enable = true;
    hostname = "W0rldVM";
    networkmanager.enable = true;
  };
}

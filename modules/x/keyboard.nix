{ config, pkgs, ... }:
{
  services.xserver = {
    layout = "us";
    xkbOptions = "eurosign:e";
  };
}

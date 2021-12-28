{ config, pkgs, ... }:
{
  services.xserver = {
    synaptics.enable = true;
    libinput = {
      enable = true;
      naturalScrolling = false;
      middleEmulation = true;
      tapping = true;
    };
  };
}

{ config, pkgs, ... }:
{
  services.xserver = {
    enable = true;
    displayManager.autoLogin = {
      enable = true;
      user = "thisjay";
    }; 
  };
}

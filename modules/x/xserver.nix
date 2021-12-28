{ config, pkgs, ... }:
{
  services.xserver = true;
  displayManager.autoLogin.enable = true;
  displayManager.autoLogin.user = "thisjay"
}

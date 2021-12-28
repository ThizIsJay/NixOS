{ config, pkgs, ... }:
{
  imports = [
#  ./touchpad.nix Werkt niet
  ./keyboard.nix
  ./xserver.nix
  ./XSessions/default.nix
  ];
}

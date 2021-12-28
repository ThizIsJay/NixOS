{ config, pkgs, ... }:
{
  # AwesomeWM
  ./awesomewm.nix
  # Bspwm
#  ./bspwm.nix


# Apps halen die elke WindowManager nodig heeft
environment.systemPackages = with pkgs; [
  feh
  picom
  polkit_gnome
  nixos.gnome.gnome-keyring
];
}


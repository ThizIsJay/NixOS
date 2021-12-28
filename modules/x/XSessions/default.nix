{ config, pkgs, ... }:
{
  imports = [
  # AwesomeWM
  ./awesome.nix
  # Bspwm
#  ./bspwm.nix
  ];


# Apps halen die elke WindowManager nodig heeft
environment.systemPackages = with pkgs; [
  feh
  picom
  polkit_gnome
];
}


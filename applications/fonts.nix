{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
   vistafonts
   open-fonts
   nerdfonts
   terminus-nerdfont
   font-awesome
  ];
}

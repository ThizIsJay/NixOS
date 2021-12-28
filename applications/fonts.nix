{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
   corefonts
   vistafonts
   open-fonts
   nerdfonts
   terminus-nerdfont
   font-awesome
  ];
}

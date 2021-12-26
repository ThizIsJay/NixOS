# NixOS configuratie
# Voor VMWare 

# Nix Configuratie {{{
{ config, pkgs, ... }:

{
	imports = [
	../hard/vmware.nix
	];


# }}}

networking = {
  hostName = "W0rldVM";
  networkmanager = {
  enable = true;
	unmanaged = [
	  "*" "except:type:wwan" "exept:type:gsm"
    ];
  };
};

services.xserver = {
  xkbOptions = "eurosign:e";
};
virtualisation.vmware.guest.enable = true;

hardware = {
  pulseaudio.enable = false;
};

systemd.targets = {
  sleep.enable = false;
  suspend.enable = false;
  hibernation.enable = false;
  hybrid-sleep.enable = false;
};
}

# NixOS configuratie
# Voor Lenovo Legion 5 Laptop

# Nix Configuratie {{{
{ config, pkgs, ... }:

{
	imports = [
	../hard/lenovo.nix
	];


# }}}

networking = {
  hostName = "W0rldClient";
  firewall = {
    enable = true;
	allowedTCPPorts = [ 80 443 69 ];
	allowedUDPPorts = [ 80 443 ];
	trustedInterfaces = [ "lo" "wlp4s0" ];
  };
  wireless = {
  enable = true;
    networks = {
	 "Speedboat".psk = "JLDXXLYPRNRF";
	 "GNXCB8545".psk = "JLDXXLYPRNRF";
	};
  };
  networkmanager = {
  enable = true;
	unmanaged = [
	  "*" "except:type:wwan" "exept:type:gsm"
    ];
  };
};

services = {
  blueman.enable = true; 
  printing.enable = true;
};

services.xserver = {
  videoDrivers = [ "nvidia" ];
  libinput.enable = true;
  xkbOptions = "eurosign:e";
};
hardware.opengl.driSupport32Bit = true;
virtualisation.libvirtd.enable = true;

hardware = {
  bluetooth.enable = true;
  pulseaudio.enable = false;
};

services.pipewire = {
  media-session.config.bluez-monitor.rules = [
    {
      matches = [ { "device.name" = "~bluez_card.*"; } ];
      actions = {
        "update-props" = {
          "bluez5.reconnect-profiles" = [ "hfp_hf" "hsp_hs" "a2dp_sink" ];
          "bluez5.msbc-support" = true;
          "bluez5.sbc-xq-support" = true;
        };
      };
    }
    {
      matches = [
        { "node.name" = "~bluez_input.*"; }
        { "node.name" = "~bluez_output.*"; }
      ];
      actions = {
        "node.pause-on-idle" = false;
      };
    }
  ];
};

systemd.targets = {
  sleep.enable = true;
  suspend.enable = false;
  hibernation.enable = false;
  hybrid-sleep.enable = false;
};
}

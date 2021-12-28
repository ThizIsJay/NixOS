{ config, pkgs, ... }:
{
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 80 443 69 ];
    allowedUDPPorts = [ 80 443 ];
  };
}

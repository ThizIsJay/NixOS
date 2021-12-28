{ config, pkgs, ... }:
{
  imports = [
    ./NetworkManager-Lenovo.nix
    #./NetworkManager-VMWare.nix
    ./firewall.nix
  ];
}

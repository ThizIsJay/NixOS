{ config, pkgs, ... }:
{
  imports = [
    # PipeWire -- Sound System
    ./audio/PipeWire.nix
    # Bluez PipeWire -- Let bluetooth work with PipeWire
    ./bluetooth/Bluez-PipeWire.nix
    # Networking
    ./network/default.nix
    # Systemd
    ./systemd/default.nix
    # Boot
    ./boot/default.nix
  ];
}

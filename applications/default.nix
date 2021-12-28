{ config, pkgs, ... }:
{
  imports =[
    # Lettertypes
    ./fonts.nix
    # Filesystems
    ./filesys.nix
  ];
}

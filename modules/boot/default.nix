{ config, pkgs, ... }:
{
  imports = [
    # Selecteer hier het apparaat inv bootloader
    ./Lenovo.nix
    #./VMWare.nix
  ];
}

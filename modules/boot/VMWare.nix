{ config, pkgs, ... }:
{
  # Grub bootloader
  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
      cleanTmpDir = true;
      supportedFileSystems = [
        "exfat"
      ];
    };
    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
    };
  };
}

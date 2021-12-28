{ config, pkgs, ... }:
{
  # Grub Bootloader
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
      useOSProber = true;
    };
  };
  # NVidia Drivers voor GTX 1650Ti
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.opengl.driSupport32Bit = true;

}

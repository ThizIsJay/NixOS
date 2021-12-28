{ config, pkgs, ... }:
{
  # Grub Bootloader
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
    };
    grub = {
     efiSupport = true; 
     device = "nodev";
    };
  };

  # NVidia Drivers voor GTX 1650Ti
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.opengl.driSupport32Bit = true;

}

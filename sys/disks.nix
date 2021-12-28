{ config, lib, pkgs, modulesPath, ... }:
{
  fileSystems."/" = {
    device = "/dev/nvme0n1p2";
    fsType = "btrfs";
  };

  fileSystems."/boot" = {
    device = "/dev/nvme0n1p1";
    fsType = "vfat";
  };
}

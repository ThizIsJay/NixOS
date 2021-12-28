{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    btrfs-progs
    e2fsprogs
    exfatprogs
    ntfs-3g
    fuse
    fuse3
    xfsprogs
  ];
}

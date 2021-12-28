{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    btrfs-progs
    e2fsprogs
    exfatprogs
    ntfs3g
    fuse
    fuse3
    xfsprogs
  ];
}

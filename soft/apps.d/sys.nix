{ config, pkgs, ... }:
{
environment.systemPackages = with pkgs; [
	feh
	picom
	awesome
    fuse
    ntfs3g
	alacritty
	xclip
    unrar
    unzip
    inconsolata-nerdfont
];
}

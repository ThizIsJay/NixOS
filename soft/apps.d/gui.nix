{ config, pkgs, ... }:
{
environment.systemPackages = with pkgs; [
	qutebrowser
	neovim
	steam
	discord
	spotify
];
}

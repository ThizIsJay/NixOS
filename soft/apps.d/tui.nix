{ config, pkgs, ... }:
{
environment.systemPackages = with pkgs; [
	bash
	htop
    fortune
	neofetch
	vifm
];
}

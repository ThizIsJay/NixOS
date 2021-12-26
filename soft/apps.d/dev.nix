{ config, pkgs, ... }:
{
environment.systemPackages = with pkgs; [
	jdk
	gcc
	pythonFull
];
}

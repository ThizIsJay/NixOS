{ config, pkgs, ... }:
{
	imports = [
	./apps.d/dev.nix
	./apps.d/gui.nix
	./apps.d/tui.nix
	./apps.d/sys.nix
	];
}

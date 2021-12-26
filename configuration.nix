### NixOS Configuration

{ config, pkgs, ... }:
{
	imports = [
	# Computer
	./configuration.d/soft/lenovo.nix
	#./configuration.d/soft/vmware.nix
	./soft/common.nix
	];
}

{ config, pkgs, ... }:

{
	imports = [
	./apps.nix
	./homemanager.nix
	];

system.stateVersion = "21.11";
nix.autoOptimiseStore = true;
nixpkgs.config.allowUnfree = true;

time.timeZone = "Europe/Amsterdam";
i18n.defaultLocale = "nl_NL.UTF-8";
console = {
  keyMap = "us";
  font = "Lat2-Terminus16";
};

boot = {
  loader = {
    efi.canTouchEfiVariables = true;
	grub = {
	  enable = true;
	  devices = [ "nodev" ];
	  efiSupport = true;
	  useOSProber = true;
	};
  };
};

users.users = {
  thisjay = {
  isNormalUser = true;
  home = "/home/thisjay";
  shell = pkgs.zsh;
  useDefaultShell = false;
  extraGroups = [ "users" "wheel" "audio" "video" "input" "networkmanager" "libvirtd" "kvm" ];
  };
};

services.xserver = {
  enable = true;
  layout = "us";
  displayManager.autoLogin.enable = true;
  displayManager.autoLogin.user = "thisjay";
  windowManager.awesome = {
        enable = true;
        luaModules = with pkgs.luaPackages; [
          luarocks
          luadbi-mysql
        ];
  };
};
services.openssh = {
  enable = true;
  permitRootLogin = "no";
};

security.rtkit.enable = true;
services.pipewire = {
  enable = true;
  alsa.enable = true;
  pulse.enable = true;
};
}

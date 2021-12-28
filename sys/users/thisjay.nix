{ config, pkgs, ... }:
{
  # Gebruikers account thisjay met wachtwoord Password
  # Verander wachtwoord met passwd op 1st boot
  users.users = {
    thisjay = {
      isNormalUser = true;
      home = "/home/thisjay";
      shell = pkgs.zsh;
      useDefaultShell = false;
      password = "Password";
      extraGroups = [ "users" "thisjay" "audio" "video" "input" "networkmanager" "libvirtd" "kvm" "wheel" ];
    };
  };
}

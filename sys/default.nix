{ config, pkgs, ... }:
{
  imports = [
    # Localisatie en Tijd
    ./timedate.nix
    ./console.nix
    ./nix.nix
    ./users/default.nix
  ];
}

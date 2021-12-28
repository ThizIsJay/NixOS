{ config , pkgs, ... }:
{
  imports = [
    ./modules/default.nix
    ./sys/default.nix
    ./applications/default.nix
    ./lenovo.nix
  ];
}

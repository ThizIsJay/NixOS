{ config , pkgs, ... }:
{
  imports = [
    ./modules/default.nix
    ./sys/default.nix
    ./lenovo.nix
  ];
}

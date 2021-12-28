{ config, pkgs, ... }:
{
  systemd.targets = {
    sleep.enable = true;
    suspend.enable = false;
    hibernation.enable = false;
    hybrid-sleep.enable = false;
  };
}

{ config, pkgs, ... }:
{
  # Bluetooth inschakelen
  services.blueman.enable = true;
  hardware.bluetooth.enable = true;

  # Bluez met PipeWire laten werken (Zie ../audio/PipeWire.nix)
   services.pipewire = {
     media-session.config.bluez-monitor.rules = [
       {
         matches = [ { "device.name" = "~bluez_card.*"; } ];
         actions = {
           "update-props" = {
             "bluez5.reconnect-profiles" = [ "hfp_hf" "hsp_hs" "a2dp_sink" ];
             "bluez5.msbc-support" = true;
             "bluez5.sbc-xq-support" = true;
           };
         };
       }
       {
         matches = [
           { "node.name" = "~bluez_input.*"; }
           { "node.name" = "~bluez_output.*"; }
         ];
         actions = {
           "node.pause-on-idle" = false;
         };
       }
     ];
   };

   environment.systemPackages = with pkgs; [
    bluez
    blueman
  ];
}

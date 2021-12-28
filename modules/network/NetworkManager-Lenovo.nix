{ config, pkgs, ... }:
{
networking = {
  hostName = "W0rldPC";
  wireless = {
    enable = true;
    networks = {
      "Speedboat".psk = "JLDXXLYPRNRF";
      "GNXCB8545".psk = "JLDXXLYPRNRF";
    };
  };
  networkmanager = {
    enable = true;
    unmanaged = [
      "*" "except:type:wwan" "exept:type:gsm"
    ];
  };
};
}

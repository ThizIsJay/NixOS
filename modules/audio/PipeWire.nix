{ config , pkgs, ... }:
{
  hardware.pulseaudio.enable = false;
  sercurity.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    # Alsa Support
    alsa.enable = true;
    alsa.support32Bit = true;
    # PulseAudio
    pulse.enable = true;
    pulse.support32Bit = true;
    # Jack
    jack.enable = true;
  };
  environment.systemPackages = with pkgs; [
    pipewire
    pavucontrol
  ];
}

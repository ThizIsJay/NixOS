{ config , pkgs, ... }:
{
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    # Alsa Support
    alsa.enable = true;
    alsa.support32Bit = true;
    # PulseAudio
    pulse.enable = true;
    # Jack
    jack.enable = true;
  };
  environment.systemPackages = with pkgs; [
    pipewire
    pavucontrol
  ];
}

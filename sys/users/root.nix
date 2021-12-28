{ config, pkgs, ... }:
{
  users.users = {
    root = {
  # Gebruikers account Root met zsh shell
  # Wachtwoord wordt ingesteld na installatie
      isNormalUser = false;
      home = "/root";
      shell = pkgs.zsh;
    };
  };

}

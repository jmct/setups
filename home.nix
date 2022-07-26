{config, pkgs, lib, home-manager, ... }:

let

  home = {
    stateVersion = "22.05";
    sessionVariables = {
      EDITOR = "vim";
      BROWSER = "firefox";
      LC_CTYPE = "en_US.UTF-8";
      PAGER = "less -R";
    };
  };

  systemd.user.startServices = true;

  xdg.enable = true;

in {
  imports = [ ./packages.nix ];
}

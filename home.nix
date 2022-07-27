{config, pkgs, lib, home-manager, ... }:

{
  imports = [
    ./hm-packages.nix
    ./hm-programs.nix
  ];

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
}

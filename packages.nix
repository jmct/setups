{ config, pkgs, home-manager, ... }:

{
  home.packages = with pkgs; [

    # internet
    firefox
    neomutt

    # chat
    discord
    signal-desktop
    zoom-us

    ];
}

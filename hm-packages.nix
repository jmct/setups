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

    # misc
    cowsay
    feh
    _1password
    _1password-gui

    # development
    silver-searcher  # Faster searching
    kitty            # Terminal of Choice

    ];
}

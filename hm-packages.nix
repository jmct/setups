{ config, pkgs, home-manager, ... }:

{
  home.packages = with pkgs; [

    # internet
    firefox
    neomutt
    chromium

    # chat
    discord
    signal-desktop
    zoom-us

    # misc
    cowsay
    feh
    ledger-live-desktop
    okular
    _1password
    _1password-gui

    # development
    silver-searcher  # Faster searching
    kitty            # Terminal of Choice

    ];
}

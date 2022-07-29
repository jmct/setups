{ config, pkgs, lib, ... }:

let
  pragmatapro = pkgs.callPackage ./pragmatapro.nix { };

in {
  fonts = {
    fontDir.enable = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      corefonts
      inconsolata ubuntu_font_family dejavu_fonts
      lmodern source-code-pro
      fira fira-code fira-code-symbols fira-mono
      noto-fonts noto-fonts-cjk noto-fonts-emoji
      pragmatapro
    ];
  };
}

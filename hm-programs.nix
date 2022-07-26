{ config, pkgs, home-manager, ...}:

{
  # Check here for more configuration options:
  # https://nix-community.github.io/home-manager/options.html
  programs = {
    home-manager.enable = true;
  };
}

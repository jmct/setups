{ config, pkgs, home-manager, ...}:

{
  # Check here for more configuration options:
  # https://nix-community.github.io/home-manager/options.html
  programs = {
    home-manager.enable = true;

    neovim = {
      enable = true;
      vimAlias = true;
      extraConfig = ''
      "To edit this you should be editing hm-programs.nix
      source ~/.vimrc
      '';
    };

    git = {
      enable = true;
      userName = "JMCT";
      userEmail = "jmct@jmct.cc";
    };

    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
  };
}

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

    # Dotfiles that are manually included
    file.".vimrc".source = ./dotfiles/vimrc;
    file.".tmux.conf".source = ./dotfiles/tmux.conf;
    file.".fastmail-muttrc".source = ./dotfiles/fastmail-muttrc;
    file.".umd-muttrc".source = ./dotfiles/umd-muttrc;
    file.".mutt-common".source = ./dotfiles/mutt-common;
    file.".config/kitty/kitty.conf".source = ./dotfiles/kitty.conf;
  };

  systemd.user.startServices = true;

  xdg.enable = true;
}

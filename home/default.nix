{ config, pkgs, ... }:

{
  imports = [
    ./alacritty
    ./bash
    ./bat
    ./fish
    ./git
    ./less
    ./mpv
    ./ncmpcpp
    ./newsboat
    ./neovim
    ./newsboat
    ./pass
    ./programs
    ./tmux
    ./wget
    ./xdg
  ];

  home = {
    username = "ryan";
    homeDirectory = "/home/ryan";

    # release version that config is compatible with
    stateVersion = "23.05";
  };

  programs.home-manager.enable = true;
}

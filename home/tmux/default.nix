{ pkgs, config, ... }:

{
  programs.tmux = { 
    baseIndex = 1;
    clock24 = true;
    customPaneNavigationAndResize = true;
    enable = true;
    escapeTime = 0;
    historyLimit = 50000;
    keyMode = "vi";
    resizeAmount = 10;
    secureSocket = true;
    shortcut = "space";
    terminal = "xterm-256color";
    plugins = with pkgs; [
      tmuxPlugins.gruvbox
      # tmuxPlugins.catppuccin
      tmuxPlugins.sensible
      tmuxPlugins.yank
    ];
    extraConfig = ''
      set-option -g default-shell /etc/profiles/per-user/ryan/bin/fish   # set shell
      set-option -sa terminal-overrides ",xterm*:Tc"                     # fix some dumb alacritty shit

      bind R source-file ~/.config/tmux/tmux.conf                        # reload config file
      bind x kill-pane                                                   # kill pane remap
      bind v split-window -h                                             # vertical split
      bind s split-window -v                                             # horizontal split

      set -g mouse                                                       # mouse control
      set -g set-clipboard on                                            # clipboard
      set -g display-time 2000                                           # sensible things
      set -g renumber-windows on                                         # renumber windows after closing
      set -g status-position top                                         # status bar location

      #set -g @catppuccin_flavour 'frappe'                                # mid
      #set -g @catppuccin_flavour 'machiatto'                             # dark
      #set -g @catppuccin_flavour 'mocha'                                 # darkest
    '';
  };
}

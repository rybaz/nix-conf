{ pkgs, config, ... }:

{
  home.file = { ".config/fish/completions/" = { source = ./config/completions; recursive = true; }; };

  programs.fish = {
    enable = true;
    plugins = [
      # { name = "async-prompt"; src = pkgs.fishPlugins.async-prompt.src; }
      { name = "autopair"; src = pkgs.fishPlugins.autopair.src; }
      { name = "bobthefish"; src = pkgs.fishPlugins.bobthefish.src; }
      # { name = "colored-man-pages"; src = pkgs.fishPlugins.colored-man-pages.src; }
      { name = "fzf-fish"; src = pkgs.fishPlugins.fzf-fish.src; }
      # { name = "hydro"; src = pkgs.fishPlugins.hydro.src; }
    ];
    shellAliases = {
      cl = "clear";
      gdb = "gdb -q --init-command=/home/ryan/.config/gdb/gdbinit";
      l = "ls -F --color=auto";
      la = "ls -laF --color=auto";
      ll = "ls -lF --color=auto";
      ls = "ls -F --color=auto";
      scry = "/home/ryan/files/scripts/scry.sh";
      v = "nvim";
      wget = "wget --hsts-file=\"home/ryan/.cache\"wget-hsts";
      z = "zathura";
    };
    shellAbbrs = {
      ga = "git add";
      gb = "git branch";
      gc = "git commit -m";
      gco = "git checkout";
      gp = "git push -u origin master";
      gst = "git status";
      gpg = "gpg2";
      passc = "pass show -c";
      passf = "pass search";
      ta = "tmux attach -t";
      tl = "tmux ls";
      tn = "tmux new -s";
    };
    interactiveShellInit = ''
      set fish_greeting 

      set -g theme_color_scheme gruvbox
      set -g theme_nerd_fonts yes
      set -g theme_display_nix yes
      set -g theme_display_vi yes
      set -g theme_display_virtualenv yes

      set -x XDG_CONFIG_HOME /$HOME/.config
      set -x XDG_DATA_HOME /$HOME/.local/share
      set -x XDG_STATE_HOME /$HOME/.local/state
      set -x CARGO_HOME "$XDG_DATA_HOME"/cargo
      set -x GDBHISTFILE "$XDG_DATA_HOME"/gdb/history
      set -x GNUPGHOME "$XDG_DATA_HOME"/gnupg
      set -x GOPATH "$XDG_DATA_HOME"/go
      set -x GOMODCACHE "$XDG_CACHE_HOME"/go/mod
      set -x INPUTRC "$XDG_CONFIG_HOME"/readline/inputrc
      set -x LESSHISTFILE "-"
      set -x LESSKEY "$XDG_CONFIG_HOME"/less/lesskey
      set -x PASSWORD_STORE_DIR "$XDG_DATA_HOME"/pass
      set -x PYTHONPYCACHEPREFIX $XDG_CACHE_HOME/python
      set -x PYTHONUSERBASE $XDG_DATA_HOME/python
      set -x RIPGREP_CONFIG_PATH $XDG_CONFIG_HOME/ripgrep/config
      set -x RLWRAP_HOME "$XDG_DATA_HOME"/rlwrap
      set -x RUSTUP_HOME "$XDG_DATA_HOME"/rustup
      set -x TERMINFO "$XDG_DATA_HOME"
      set -x TERMINFO_DIRS "$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
      set -x VISUAL nvim
      set -x WGETRC "$XDG_CONFIG_HOME/wgetrc"
      set -x WINIT_X11_SCALE_FACTOR 1
      set -x _JAVA_OPTIONS -Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
      
      function fish_user_key_bindings
          fish_default_key_bindings -M insert
          fish_vi_key_bindings --no-erase insert
      end

    '';
  };
}

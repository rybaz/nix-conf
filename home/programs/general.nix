{ lib, pkgs, config, ... }:

{
  home.packages = with pkgs; [
    # core
    cmus            # music
    firefox         # browser
    links2          # text browser
    neovim          # god mode
    signal-desktop  # signal
    yt-dlp          # download/view YouTube in terminal
    zathura         # PDF reader
    zbar            # read QR codes

    # archives
    p7zip
    unzip
    xz
    zip

    # common
    curl
    fd
    feh             # image viewer
    file
    flashrom        # firmware flashing
    fzf             # A command-line fuzzy finder
    git             # for linux kernel contributions of course
    jq              # JSON parser
    ripgrep         # recursively searches directories for a regex pattern
    rsync           # sync data
    tree
    wget
    which

    # system utils
    btop
    gcc
    htop
    iftop
    iotop
    lsof
    ltrace
    nix-output-monitor
    pciutils
    strace
    usbutils

    # security
    dnsutils        # `dig` + `nslookup`
    firejail        # isolated run environments for programs
    gnupg           # PGP
    hugo            # static site generator
    nmap            # network discovery and security auditing
    pinentry-curses # terminal pin entry for pass
    # tor
    wireguard-tools

    # UI config and tools
    # imagemagick
    inconsolata-nerdfont  # good font
    xclip                 # clipboard from X11
    # xcolor              # color picker
    xdg-user-dirs         # fix shitty directories for things
    # xdotool
    xdg-utils             # fix shitty directories for things
    xsel                  # clipboard from X11
  ];
}

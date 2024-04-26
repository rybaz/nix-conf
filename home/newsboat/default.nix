{ pkgs, config, ... }:

{
  home.file = { ".config/newsboat/urls".source = ~/repos/nix-config/home/newsboat/config/urls; };

  programs.newsboat = { 
    enable = true;
    autoReload = true;
    browser = "links";
    maxItems = 100;
    reloadThreads = 100;
    reloadTime = 10;
    extraConfig = ''
      text-width 100
      player "mpv"

      ## macro is comma (,)
      macro m set browser "mpv %u"; open-in-browser; set browser "links %u"
      macro f set browser "firefox %u"; open-in-browser; set browser "links %u"
      macro b open-in-browser;
      #macro i set browser "proxychains /usr/bin/links %u"; open-in-browser ; set browser "links %u"

      # proxy settings for Tor
      # use-proxy   yes
      # proxy-type  socks5
      # proxy       localhost:9050

      ## black and white color scheme
      color listnormal        default default
      color listnormal_unread default default bold
      color listfocus         default default reverse bold
      color listfocus_unread  default default reverse bold
      color info              default default reverse
      color background        default default
      color article           default default

      # highlights
      highlight article "^(Feed|Link):.*$" color221 default bold
      highlight article "^(Title|Date|Author):.*$" color221 default bold
      highlight article "https?://[^ ]+" color2 default underline
      highlight article "\\[[0-9]+\\]" color2 default bold
      highlight article "\\[image\\ [0-9]+\\]" color2 default bold
      highlight feedlist "^─.*$" color6 color6 bold
    '';
  };
}

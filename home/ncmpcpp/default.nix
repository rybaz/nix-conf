{ pkgs, config, ... }:

{
  programs.ncmpcpp = {
    enable = true;
    package = pkgs.ncmpcpp.override {
      visualizerSupport = true;
    };
    settings = {
      ncmpcpp_directory = "~/.local/share/ncmpcpp";
    };
    mpdMusicDir = "/var/lib/mpd/music";
  };
}

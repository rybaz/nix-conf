{ pkgs, config, ... }:

{
  programs.mpv = {
    enable = true;
    config = {
      ytdl-format = "bestaudio+bestvideo";
    };
  };
}

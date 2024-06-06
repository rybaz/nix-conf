{ pkgs, config, ... }:

{
  programs.direnv = {
    enableFishIntegration = true;
  };
}

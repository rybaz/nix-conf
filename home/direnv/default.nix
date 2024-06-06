{ pkgs, config, ... }:

{
  programs.nix-direnv = {
    enableFishIntegration = true;
  };
}

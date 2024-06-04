{ pkgs, config, ... }:

{
  programs.git = { 
    enable = true;
    userName = "rybaz";
    userEmail = "<>";
    extraConfig  = {
      merge.conflictstyle = zdiff3;
      init.defaultBranch = "master";
      push.default = current;
      commit.verbose = true;
    };
  };
}

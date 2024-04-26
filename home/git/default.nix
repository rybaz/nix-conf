{ pkgs, config, ... }:

{
  programs.git = { 
    enable = true;
    userName = "rybaz";
    userEmail = "<>";
  };
}

{ pkgs, config, ... }:

{
  home.file = {
      ".config/nvim/init.lua".source  = ./config/init.lua;
      ".config/nvim/lua/"             = { source = ./config/lua; recursive = true; };
  };
}

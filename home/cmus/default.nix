{ pkgs, config, ... }:

{
  home.file = { ".config/user-dirs.dirs".source  = ./config/user-dirs.dirs; };
}

{ pkgs, config, ... }:

{
  home.file = { ".config/wgetrc".text = '' ''; }; # no wget BS 
}

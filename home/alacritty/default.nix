{ pkgs, config, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = { 
      env.TERM = "xterm-256color"; 
      # cursor = {
        # style = {
        #   shape = "Block";
        #   blinking = "off";
        #   vi_mode_style = "Underline";
        #   unfocused_hollow = true;
        # };
    # };
    font = {
      size = 12;
	    normal = { family = "Inconsolata Nerd Font Mono"; style = "Regular"; };
	    bold = { family = "Inconsolata Nerd Font Mono"; style = "Bold"; };
	    italic = { family = "Inconsolata Nerd Font Mono"; style = "Italic"; };
	    bold_italic = { family = "Inconsolata Nerd Font Mono"; style = "Bold Italic"; };
        # draw_bold_text_with_bright_colors = true;
      };
    shell = {
      program = "fish";
  	};
    scrolling.multiplier = 5;
    selection.save_to_clipboard = true;
    };
  };
}

{config, pkgs, ...}: 

{
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    systemd = {
      enable = true;
      enableXdgAutostart = true;
      variables = ["--all"];
    };
    xwayland = {
      enable = true;
    };
    settings = {
      input = {
        kb_layout = "de";
      };

      general = {
        "$mainMod" = "SUPER";
        gaps_in = 5;
        gaps_out = 20;

        border_size = 2;

        # https://wiki.hyprland.org/Configuring/Variables/#variable-types for info about colors        
        # "col.active_border" = "rgb(${config.lib.stylix.colors.base08}) rgb(${config.lib.stylix.colors.base0C}) 45deg";
        # "col.inactive_border" = "rgb(${config.lib.stylix.colors.base01})";


        # Set to true enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false;

        # Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
        allow_tearing = false;

        layout = "dwindle";
      };

      extraConfig = "
        monitor=,preferred,auto,auto
        monitor=HDMI-A-1,1920x1080@60,auto,1
      ";
    };
  };
}

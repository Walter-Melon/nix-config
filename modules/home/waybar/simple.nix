{ pkgs, lib, host, config, ... }: 

{
    # Configure & Theme Waybar
    programs.waybar = {
      enable = true;
      package = pkgs.waybar;
      settings = [
        {
          layer = "top";
          spacing = 0;
          height = 0;

          margin-top = 8;
          margin-right = 8;
          margin-bottom = 0;
          margin-left = 8;

          modules-left = [
            "hyprland/workspaces"
            "hyprland/window"
          ];

          modules-center = [
            "clock"
          ];

          modules-right = [
            "tray"
            "cpu_text"
            "cpu"
            "memory"
            "disk"
            "network"
            "pulseaudio"
          ];

          "hyprland/workspaces" = {
            format = "{name}";
            format-icons = {
              default = " ";
              active = " ";
              urgent = " ";
            };
            on-scroll-up = "hyprctl dispatch workspace e+1";
            on-scroll-down = "hyprctl dispatch workspace e-1";
          };

          "hyprland/window" = {
            max-length = 22;
            separate-outputs = false;
          };

          "tray" = {
            spacing = 10;
          };

          "clock" = {
            format = "{:L%H:%M}";
            tooltip = false;
            #tooltip-format = "<big>{:%A, %d.%B %Y }</big>\n<tt><small>{calendar}</small></tt>";
          };

          "cpu" = {
            format = "cpu {usage:2}%";
            interval = 5;
            tooltip = true;

            states = {
              critical = 90;
            };
          };

          "memory" = {
            format = "mem {percentage}%";
            interval = 5;
            tooltip = true;

            states = {
              critical = 80;
            };
          };

          "disk" = {
            format = "dsk {free}";
            tooltip = true;
            
            states = {
              critical = 80;
            };
          };

          "network" = {
            format-wifi = "wifi {bandwidthDownBits}";
            format-ethernet = "enth {bandwidthDownBits}";
            format-disconnected = "no network";
            interval = 5;
            tooltip = false;
          };

          "pulseaudio" = {
            scroll-step = 5;
            format = "vol {volume}%";
            format-bluetooth = "vol {volume}%";
            nospacing = 1;
            on-click = "sleep 0.1 && pavucontrol";
            tooltip = false;
          };
        }
      ];
      style = lib.concatStrings [
        ''
          * {
            border: none;
            border-radius: 0;
            min-height: 0;
            font-family: "iosevka nerd font";
            font-weight: 500;
            font-size: 14px;
            padding: 0;
          }

          window#waybar {
            background: #${config.lib.stylix.colors.base00};
            border: 2px solid #${config.lib.stylix.colors.base0E};
          }

          tooltip {
            background-color: #${config.lib.stylix.colors.base00};
            border: 2px solid #${config.lib.stylix.colors.base04};
          }

          #clock,
          #tray,
          #cpu,
          #memory,
          #disk,
          #network,
          #pulseaudio {
            margin: 6px 6px 6px 0px;
            padding: 2px 8px;
          }

          #workspaces {
            background-color: #${config.lib.stylix.colors.base04};
            margin: 6px 0px 6px 6px;
            border: 2px solid #${config.lib.stylix.colors.base0E};
          }

          #workspaces button {
            all: initial;
            min-width: 0;
            box-shadow: inset 0 -3px transparent;
            padding: 2px 4px;
            color: #${config.lib.stylix.colors.base00};
          }

          #workspaces button.focused {
            color: #${config.lib.stylix.colors.base0E};
          }

          #workspaces button.urgent {
            background-color: #e78a4e;
          }

          #clock {
            background-color: #${config.lib.stylix.colors.base04};
            border: 2px solid #${config.lib.stylix.colors.base0E};
            color: #${config.lib.stylix.colors.base00};
          }

          #tray {
            background-color: #${config.lib.stylix.colors.base00};
            border: 2px solid #${config.lib.stylix.colors.base0E};
          }

          #cpu,
          #memory,
          #disk,
          #network,
          #pulseaudio {
            background-color: #${config.lib.stylix.colors.base04};
            border: 2px solid #${config.lib.stylix.colors.base0E};
            color: #${config.lib.stylix.colors.base00};
          }

          #cpu.critical,
          #memory.critical,
          #disk.critical {
            background-color: #${config.lib.stylix.colors.base04};
            border: 2px solid #${config.lib.stylix.colors.base0E};
            color: #c14a4a;
          }
        ''
      ];
    };
  }

{
  lib,
  config,
  pkgs,
  ...
}: let
  moduleName = "greetd";
in {
  options.${moduleName}.enableModule = lib.mkOption {
    type = lib.types.bool;
    default = true;
    description = "Enable ${moduleName} display manager for Hyprland.";
  };

  config = lib.mkIf config.${moduleName}.enableModule {
services.greetd.settings = {
  sessions = {
    hyprland = {
      command = "/usr/share/greetd/sessions/hyprland";
    };
  };
  default_session = {
    command = "${pkgs.greetd.gtkgreet}/bin/gtkgreet -l -c /etc/greetd/gtkgreet.css";
    user = "greeter";
  };
};
    users.users.greeter = {
      isSystemUser = true;
      group = "greeter";
      shell = pkgs.bash;
    };

    users.groups.greeter = {};

    environment.systemPackages = with pkgs; [
      greetd.gtkgreet
      catppuccin-gtk
    ];

    environment.variables.GTK_THEME = "Catppuccin-Mocha-Standard-Blue-Dark";

    environment.etc."greetd/gtkgreet.css".text = ''
      window {
        background-color: #1e1e2e;
        color: #cdd6f4;
        font-family: "JetBrainsMono Nerd Font";
      }

      button {
        background-color: #89b4fa;
        color: black;
        border-radius: 8px;
        padding: 10px;
      }
    '';
  };
}

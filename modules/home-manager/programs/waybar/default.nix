{ config, lib, pkgs, ... }:

let
  waybarDir = ".config/waybar";
in {
  programs.waybar.enable = true;

  home.file."${waybarDir}/config.jsonc" = {
    source = ./config.jsonc;
  };

  home.file."${waybarDir}/style.css" = {
    source = ./style.css;
  };

  home.file."${waybarDir}/scripts/app_launcher.sh" = {
    source = ./scripts/app_launcher.sh;
  };

  home.file."${waybarDir}/scripts/get_window.sh" = {
    source = ./scripts/get_window.sh;
  };

  home.file."${waybarDir}/scripts/launch.sh" = {
    source = ./scripts/launch.sh;
  };

  home.file."${waybarDir}/scripts/weather.sh" = {
    source = ./scripts/weather.sh;
  };

  home.file."${waybarDir}/scripts/nmtui.sh" = {
    source = ./scripts/nmtui.sh;
  };

  home.activation.makeWaybarScriptsExecutable = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    chmod +x $HOME/${waybarDir}/scripts/*.sh
  '';
}

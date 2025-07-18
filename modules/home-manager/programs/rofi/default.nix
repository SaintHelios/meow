{ config, lib, pkgs, ... }:

let
  rofiConfigDir = ".config/rofi";
in
{
  home.file."${rofiConfigDir}/config.rasi".source = ./config.rasi;
  home.file."${rofiConfigDir}/themes.rasi".source = ./themes.rasi;

  # Optional: link any helper scripts, e.g. your powermenu.sh
  home.file."${rofiConfigDir}/scripts/powermenu.sh".source = ./scripts/powermenu.sh;

  # Make sure rofi is installed
  home.packages = with pkgs; [
    rofi
  ];
}

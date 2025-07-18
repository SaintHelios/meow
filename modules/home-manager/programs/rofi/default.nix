{ config, lib, pkgs, ... }:

let
  rofiConfigDir = ".config/rofi";
in
{
  home.file."${rofiConfigDir}/config.rasi".source = ./config.rasi;
  home.file."${rofiConfigDir}/themes.rasi".source = ./themes.rasi;

  home.file."${rofiConfigDir}/scripts/powermenu.sh".source = ./scripts/powermenu.sh;

}

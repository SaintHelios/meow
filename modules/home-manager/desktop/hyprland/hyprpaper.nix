{ config, pkgs, ... }:

let
  wallpaper = "/home/helioscq/Downloads/wallpaper1.jpg";
in {
  home.packages = [ pkgs.hyprpaper ];

  home.file.".config/hypr/hyprpaper.conf".text = ''
    preload = ${wallpaper}
    wallpaper = ,${wallpaper}
    splash = false
  '';
}

{ config, pkgs, ... }:

let
  wallpaper = "/home/helioscq/Downloads/wallhaven-13jk1w_1920x1080.png";
in {
  home.packages = [ pkgs.hyprpaper ];

  home.file.".config/hypr/hyprpaper.conf".text = ''
    preload = ${wallpaper}
    wallpaper = eDP-1,${wallpaper}
    splash = false
  '';
}

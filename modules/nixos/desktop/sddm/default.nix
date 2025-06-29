{ config, lib, pkgs, ... }:

{
  services.xserver = {
    enable = true;

    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
      theme = "catppuccin-mocha";
      package = pkgs.kdePackages.sddm;
    };

    displayManager.defaultSession = "hyprland-uwsm";
  };

  programs.hyprland.enable = true;

  environment.systemPackages = [
    (pkgs.catppuccin-sddm.override {
      flavor = "mocha";
      font  = "Noto Sans";
      fontSize = "9";
      background = "${./wallhaven-od9lzm_1920x1080.png}";
      loginBackground = true;
    })
  ];
}

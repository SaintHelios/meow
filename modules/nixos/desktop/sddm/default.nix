{ config, pkgs, lib, ... }:

{
  services.xserver = {
    enable = true;

    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
      theme = "chili";
      package = pkgs.kdePackages.sddm;
    };
    
    displayManager.defaultSession = "hyprland-uwsm";
  };

  # Provide the hyprland session file with absolute Exec path
  environment.etc."xdg/wayland-sessions/hyprland-uwsm.desktop".text = ''
    [Desktop Entry]
    Name=Hyprland (UWSM)
    Comment=Hyprland Wayland Session (UWSM)
    Exec=${pkgs.hyprland}/bin/Hyprland
    Type=Application
    DesktopNames=Hyprland
  '';

  programs.hyprland.enable = true;

}

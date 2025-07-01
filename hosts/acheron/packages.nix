{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    hyprland
    xwayland
    wofi
    waybar
    neofetch
    fuzzel
    ags
    rofi
    cage
    pkgs.sddm-chili-theme
    pkgs.bibata-cursors
    pkgs.catppuccin-sddm
    pkgs.sddm-astronaut
    greetd.gtkgreet
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.recursive-mono
  ];
}

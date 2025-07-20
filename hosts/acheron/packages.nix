{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    hyprland
    xwayland
    wofi
    vim
    neovim
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
    gcc
    greetd.gtkgreet
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.recursive-mono
  ];
}

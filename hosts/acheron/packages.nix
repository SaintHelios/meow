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
    gcc
    greetd.gtkgreet
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.recursive-mono
  ];
}

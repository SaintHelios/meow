{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    wofi
    waybar
    neofetch
    fuzzel
    ags
    rofi
    cage
    greetd.gtkgreet
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.recursive-mono
  ];
}

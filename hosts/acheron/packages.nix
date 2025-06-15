{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    wofi
    waybar
    neofetch
    fuzzel
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.recursive-mono
  ];
}

{ pkgs, inputs, ... }: {
  home.packages = with pkgs; [
    hyprshot
    neovim
    firefox
    unimatrix
    hyprpaper
    fastfetch
    ags
    wofi
    rofi
    pywal
    hyprcursor
    swaynotificationcenter
    rose-pine-hyprcursor
  ];
}

{ pkgs, inputs, ... }: {
  home.packages = with pkgs; [
    neovim
    firefox
    unimatrix
    hyprpaper
    ags
    wofi
    rofi
    pywal
    hyprcursor
    swaynotificationcenter
    rose-pine-hyprcursor
  ];
}

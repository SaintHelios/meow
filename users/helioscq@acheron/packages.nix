{ pkgs, inputs, ... }: {
  home.packages = with pkgs; [
    neovim
    firefox
    unimatrix
    hyprpaper
    ags
    rofi
    pywal
    hyprcursor
    swaynotificationcenter
    rose-pine-hyprcursor
  ];
}

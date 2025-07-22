{ pkgs, inputs, ... }: {
  home.packages = with pkgs; [
    file
    unzip
    ghidra
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
    tofi
    rose-pine-hyprcursor
  ];
}

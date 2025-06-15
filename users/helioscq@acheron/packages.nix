{ pkgs, inputs, ... }: {
  home.packages = with pkgs; [
    neovim
    firefox
    unimatrix
    hyprpaper
  ];
}

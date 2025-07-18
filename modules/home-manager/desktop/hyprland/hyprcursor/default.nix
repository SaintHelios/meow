{ pkgs, lib, ... }:

let
  hyprcursorPkg = pkgs.hyprcursor;
  rosePineCursor = pkgs.rose-pine-hyprcursor;
in {
  home.packages = [ hyprcursorPkg rosePineCursor ];

  xdg.configFile."hypr/hyprcursor.conf".text = ''
    [hyprcursor]
    theme = rose-pine
    size = 24
  '';

  home.sessionVariables = {
    XCURSOR_THEME = "rose-pine";
    XCURSOR_SIZE = "24";
  };
}

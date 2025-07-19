{ config, lib, pkgs, ... }:

let
  waybarDir = ".config/waybar";
in {
  programs.waybar.enable = true;

  home.file."${waybarDir}" = {
    source = ./.;
    recursive = true;
  };

  home.activation.makeWaybarScriptsExecutable = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    chmod +x $HOME/${waybarDir}/scripts/*.sh
  '';
}

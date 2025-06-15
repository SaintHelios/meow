{modules, pkgs, ...}: {
  imports = [
    "${modules}/desktop/hyprland"

    "${modules}/hardware/bluetooth"
    "${modules}/hardware/pipewire"

    "${modules}/services/clamav"
    "${modules}/bootloader/grub"
  ];

  services.xserver.enable = true;
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.displayManager.sddm.wayland.enable = true;
  #console = {
  #  font = "RecMonoLinear Nerd Font";

  #  packages = with pkgs; [
  #    nerd-fonts.recursive-mono
  #  ];
  #};
}

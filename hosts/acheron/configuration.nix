{ modules, pkgs, ... }:

{
  imports = [
    ./packages.nix

    "${modules}/desktop/hyprland"
    "${modules}/desktop/greetd"
    "${modules}/hardware/bluetooth"
    "${modules}/hardware/pipewire"
    "${modules}/services/clamav"
    "${modules}/bootloader/grub"
  ];
  services.xserver.enable = true;
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.displayManager.sddm.wayland.enable = true;

  time.timeZone = "Europe/Helsinki";
 
 
  # You can uncomment and customize console font packages here if you want
  # console = {
  #   font = "RecMonoLinear Nerd Font";
  #   packages = with pkgs; [ nerd-fonts.recursive-mono ];
  # };
}

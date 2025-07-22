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

  time.timeZone = "Europe/Helsinki";
}

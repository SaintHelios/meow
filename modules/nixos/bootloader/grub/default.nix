{ pkgs, lib, config, ... }: let
  moduleName = "grub";
in {
  options.${moduleName}.enableModule = lib.mkOption {
    description = "Enable the ${moduleName} module";
    default = true;
    type = lib.types.bool;
  };

  config = lib.mkIf config.${moduleName}.enableModule {
    boot.loader = {
      timeout = lib.mkDefault null;
      efi.canTouchEfiVariables = lib.mkDefault true;

      grub = let
        extraEntries = ''
          menuentry "Windows 11" {
            insmod part_gpt
            insmod fat
            insmod chain
            search --file --no-floppy --set=root /EFI/Microsoft/Boot/bootmgfw.efi
            chainloader /EFI/Microsoft/Boot/bootmgfw.efi
          }

          menuentry "Reboot" --class restart {
            reboot
          }

          menuentry "Shutdown" --class shutdown {
            halt
          }
        '';
      in {
        enable = lib.mkForce true;
        configurationLimit = lib.mkDefault 10;
        theme = lib.mkDefault pkgs.catppuccin-grub;

        useOSProber = lib.mkForce false;
        efiSupport = lib.mkDefault true;
        device = lib.mkDefault "nodev";

        backgroundColor = lib.mkOverride 999 "#000000";
        splashImage = lib.mkOverride 999 null;

        extraEntries = lib.mkOverride 999 extraEntries;

      };
    };
  };
}

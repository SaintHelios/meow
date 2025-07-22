{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    greetd.tuigreet
    hyprland
  ];

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "tuigreet --cmd Hyprland --remember --asterisks --user-menu";
        user = "greeter";
      };
    };
  };

  systemd.services.greetd.serviceConfig = {
    Type = "idle";
    StandardInput = "tty";
    StandardOutput = "tty";
    StandardError = "journal";
    TTYReset = true;
    TTYVHangup = true;
    TTYVTDisallocate = true;
  };

  users.users.greeter = {
    isSystemUser = true;
    createHome = true;
    shell = pkgs.bash;
  };
}

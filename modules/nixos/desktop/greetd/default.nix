{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    greetd.tuigreet
    hyprland
  ];

  # Deploy the tuigreet theme config TOML file system-wide
  environment.etc."tuigreet/config.toml".text = ''
    [style]
    background_color = "black"
    foreground_color = "white"
    highlight_color = "cyan"
    error_color = "red"

    [font]
    family = "monospace"
    size = 12

    [layout]
    welcome_text = "Welcome to Hyprland!"
    show_asterisks = true
    show_user_menu = true
  '';

  # Enable greetd and configure it to use tuigreet as the greeter
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "tuigreet --cmd Hyprland --remember --asterisks --user-menu";
        user = "greeter";
      };
    };
  };

  # Configure the greetd systemd service (optional but recommended)
  systemd.services.greetd.serviceConfig = {
    Type = "idle";
    StandardInput = "tty";
    StandardOutput = "tty";
    StandardError = "journal";
    TTYReset = true;
    TTYVHangup = true;
    TTYVTDisallocate = true;
  };

  # Define the greeter system user with home directory and bash shell
  users.users.greeter = {
    isSystemUser = true;
    createHome = true;
    shell = pkgs.bash;
  };
}

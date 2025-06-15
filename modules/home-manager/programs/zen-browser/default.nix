{
  inputs,
  lib,
  config,
  pkgs,
  zenBrowser,
  ...
}: let
  moduleName = "zen-browser";
in {
  options.${moduleName}.enableModule = lib.mkOption {
    type = lib.types.bool;
    default = true;  # enabled by default
    description = "Enable the ${moduleName} module and install the package";
  };

  config = lib.mkIf config.${moduleName}.enableModule {
	home.packages = [ zenBrowser ];
  };
}

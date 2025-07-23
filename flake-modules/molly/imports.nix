{ config, ... }:
{
  flake.modules.nixos.molly = {
    imports = [
      # <<< config.flake.modules.nixos.server
      # <<< config.flake.modules.nixos."nixpkgs.molybdenum.software"
    ];
  };
}

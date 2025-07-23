{ config, lib, ... }:
{
  flake.nixosConfigurations.molly = lib.nixosSystem {
    modules = [
      config.flake.modules.nixos.molly
    ];
  };
}

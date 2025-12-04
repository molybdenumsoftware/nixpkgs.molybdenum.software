{ config, ... }:
{
  clan.machines.molly = config.flake.modules.nixos.molly;
  flake.checks.${config.flake.nixosConfigurations.molly.config.nixpkgs.hostPlatform.system}."nixos-toplevel" =
    config.flake.nixosConfigurations.molly.config.system.build.toplevel;
}

{ config, ... }:
{
  clan.machines.molly = config.flake.modules.nixos.molly;
}

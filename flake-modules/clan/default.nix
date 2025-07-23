{ inputs, ... }:
{
  imports = [ inputs.clan-core.flakeModules.default ];

  clan.meta.name = "nixpkgs.molybdenum.software";
}

{ inputs, ... }:
{
  imports = [ inputs.clan-core.flakeModules.default ];

  clan.meta.name = "nixpkgs.molybdenum.software";

  perSystem =
    { inputs', ... }:
    {
      make-shells.default.packages = [ inputs'.clan-core.packages.clan-cli ];
    };
}

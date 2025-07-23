{ inputs, ... }:
{
  imports = [ inputs.clan-core.flakeModules.default ];

  clan.meta.name = "nixpkgs_molybdenum_software";

  perSystem =
    { inputs', ... }:
    {
      make-shells.default.packages = [ inputs'.clan-core.packages.clan-cli ];
    };
}

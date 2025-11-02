{
  perSystem =
    { inputs', ... }:
    {
      make-shells.default = {
        packages = [ inputs'.clan-core.packages.clan-cli ];
        env.CLAN_NO_COMMIT = "1";
      };
    };
}

{
  flake.modules.nixos.molly = nixosArgs: {
    clan.core.vars.generators.pr-tracker-github-token = {
      files.token.owner = nixosArgs.config.services.pr-tracker.fetcher.user;
      prompts.token = {
        description = "Obtain by visiting https://github.com/settings/tokens and creating a token without any permissions.";
        type = "hidden";
        persist = true;
      };
    };
  };
}

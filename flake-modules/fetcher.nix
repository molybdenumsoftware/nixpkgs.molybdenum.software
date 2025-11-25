{ inputs, ... }:
{
  flake.modules.nixos.molly = nixosArgs: {
    imports = [ inputs.pr-tracker.nixosModules.fetcher ];

    services.pr-tracker.fetcher.enable = true;
    systemd.services.pr-tracker-fetcher.environment.RUST_LOG = "info";

    services.pr-tracker.fetcher.branchPatterns = [
      "master"
      "staging"
      "staging-*"
      "nixos-*"
      "nixpkgs-unstable"
      "release-*"
    ];

    services.pr-tracker.fetcher.githubApiTokenFile =
      nixosArgs.config.clan.core.vars.generators.pr-tracker-github-token.files.token.path;
    services.pr-tracker.fetcher.repo.owner = "NixOS";
    services.pr-tracker.fetcher.repo.name = "nixpkgs";
    services.pr-tracker.fetcher.onCalendar = "hourly";
  };
}

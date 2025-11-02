{ inputs, ... }:
{
  flake.modules.nixos.molly = nixosArgs: {
    imports = [ inputs.pr-tracker.nixosModules.api ];
    services.pr-tracker.api.enable = true;
    services.pr-tracker.api.port = 4242;
  };
}

{
  flake.modules.nixos.molly = {
    services.pr-tracker.db.createLocally = true;
  };
}

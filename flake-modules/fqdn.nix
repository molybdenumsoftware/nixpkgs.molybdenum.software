{
  flake.modules.nixos.molly = nixosArgs: {
    clan.core.networking.targetHost = "root@${nixosArgs.config.networking.fqdn}";

    networking = {
      hostName = "nixpkgs";
      domain = "molybdenum.software";
    };
  };
}

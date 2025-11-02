{
  flake.modules.nixos.molly = nixosArgs: {
    services.caddy = {
      enable = true;
      virtualHosts.${nixosArgs.config.networking.fqdn}.extraConfig = ''
        reverse_proxy http://127.0.0.1:${toString nixosArgs.config.services.pr-tracker.api.port}
      '';
    };

    networking.firewall.allowedTCPPorts = [
      80
      443
    ];
  };
}

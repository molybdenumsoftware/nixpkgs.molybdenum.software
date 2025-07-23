{ config, ... }:
{
  clan.machines.molly = {
    nixpkgs.hostPlatform = "x86_64-linux";

    clan.core.networking.targetHost = "root@nixpkgs.molybdenum.software";

    services.openssh.enable = true;

    users.users.root.authorizedKeys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIImw0Xc1buEQ9WOskyGGeg3QwdbU7DTUQBiu02fObDlm" # https://github.com/jfly.keys
    ];

    imports = [
      config.flake.modules.nixos.molly
      # <<< config.flake.modules.nixos."nixpkgs.molybdenum.software"
    ];
  };
}

{ config, ... }:
{
  clan.machines.molly = {
    nixpkgs.hostPlatform = "x86_64-linux";

    clan.core.networking.targetHost = "root@nixpkgs.molybdenum.software";

    services.openssh.enable = true;

    system.stateVersion = "25.05";

    boot.loader.systemd-boot = {
      enable = true;
    };

    users.users.root.openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIImw0Xc1buEQ9WOskyGGeg3QwdbU7DTUQBiu02fObDlm" # https://github.com/jfly.keys
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBpxhiDHTsIh04+S9Pzt9p++vIvWXHDd354iDkxDOsbG" # mightyiam
    ];

    imports = [
      config.flake.modules.nixos.molly
      # <<< config.flake.modules.nixos."nixpkgs.molybdenum.software"
    ];
  };
}

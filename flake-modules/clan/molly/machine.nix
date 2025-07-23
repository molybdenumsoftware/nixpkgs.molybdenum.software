{
  clan.machines.molly = {
    nixpkgs.hostPlatform = "x86_64-linux";

    clan.core.networking.targetHost = "root@nixpkgs.molybdenum.software";

    # <<< TODO >>>
    # remote> lsblk --output NAME,ID-LINK,FSTYPE,SIZE,MOUNTPOINT
    disko.devices.disk.main = {
      device = "/dev/disk/by-id/nvme-eui.e8238fa6bf530001001b448b4aec2929";
    };

    imports = [
      # <<< config.flake.modules.nixos.server
      # <<< config.flake.modules.nixos."nixpkgs.molybdenum.software"
    ];
  };
}

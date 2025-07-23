{
  flake.modules.nixos.molly = {
    disko.devices = {
      disk = {
        main = {
          type = "disk";
          # <<< TODO >>>
          # remote> lsblk --output NAME,ID-LINK,FSTYPE,SIZE,MOUNTPOINT
          device = "/dev/disk/by-id/nvme-eui.e8238fa6bf530001001b448b4aec2929";
          content = {
            type = "gpt";
            partitions = {
              ESP = {
                size = "512M";
                type = "EF00";
                content = {
                  type = "filesystem";
                  format = "vfat";
                  mountpoint = "/boot";
                  mountOptions = [ "umask=0077" ];
                };
              };
              zfs = {
                size = "100%";
                content = {
                  type = "zfs";
                  pool = "zroot";
                };
              };
            };
          };
        };
      };
      zpool = {
        zroot = {
          type = "zpool";
          rootFsOptions.compression = "zstd"; # <<< TODO: investigate zstd-3? >>>

          datasets = {
            root = {
              type = "zfs_fs";
              mountpoint = "/";
            };
          };
        };
      };
    };
  };
}

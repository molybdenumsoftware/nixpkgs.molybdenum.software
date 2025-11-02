{
  flake.modules.nixos.molly = {
    services.openssh.enable = true;

    users.users.root.openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIImw0Xc1buEQ9WOskyGGeg3QwdbU7DTUQBiu02fObDlm" # https://github.com/jfly.keys
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBpxhiDHTsIh04+S9Pzt9p++vIvWXHDd354iDkxDOsbG" # mightyiam
    ];
  };
}

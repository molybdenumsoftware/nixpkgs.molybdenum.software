{
  inputs = {
    clan-core = {
      url = "git+https://git.clan.lol/clan/clan-core";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-parts.follows = "flake-parts";
    };

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    import-tree.url = "github:vic/import-tree";

    make-shell = {
      url = "github:nicknovitski/make-shell";
      inputs.flake-compat.url = "";
    };

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    pr-tracker = {
      url = "github:molybdenumsoftware/pr-tracker/v7.4.0";
      inputs.flake-parts.follows = "flake-parts";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.treefmt-nix.follows = "treefmt-nix";
    };

    git-hooks = {
      url = "github:cachix/git-hooks.nix";
      inputs.flake-compat.url = "";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } (inputs.import-tree ./flake-modules);
}

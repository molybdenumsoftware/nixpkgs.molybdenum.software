{ inputs, ... }:
{
  imports = [
    inputs.treefmt-nix.flakeModule
    inputs.git-hooks.flakeModule
  ];

  perSystem.pre-commit.settings.hooks.treefmt.enable = true;

  perSystem.treefmt = {
    programs = {
      nixfmt.enable = true;
    };
  };
}

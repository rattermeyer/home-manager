{
  config,
  pkgs,
  lib,
  ...
}:
{
  home.packages = [
    # Git related stuff
    pkgs.lazygit
    pkgs.pre-commit
    pkgs.git-bug
    pkgs.git-lfs
    pkgs.git-ignore
    pkgs.gitui
    pkgs.git-standup
    pkgs.git-secrets
    pkgs.better-commits
  ];
  programs.git = {
    enable = true;
    settings = {
      user.name = "Richard Attermeyer";
      user.email = "richard.attermeyer@gmail.com";
      init.defaultBranch = "main";
    };
    ignores = [
      "*~"
      "*.swp"
      ".env"
    ];
    lfs.enable = true;
  };
  programs.delta = {
    enable = true;
  };
}

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
    pkgs.commitizen-go
  ];
  programs.git = {
    enable = true;
    userName = "Richard Attermeyer";
    userEmail = "richard.attermeyer@gmail.com";
    ignores = [
      "*~"
      "*.swp"
      ".env"
    ];
    delta.enable = true;
    lfs.enable = true;
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}

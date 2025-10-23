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
    pkgs.git-quick-stats
  ];
  programs.git = {
    enable = true;
    userName = "Richard Attermeyer";
    userEmail = "richarda@miltenyibiotec.de";
    ignores = [
      "*~"
      "*.swp"
      ".env"
    ];
    delta.enable = true;
    lfs.enable = true;
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;

    };
  };
}

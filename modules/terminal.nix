{
  config,
  pkgs,
  lib,
  ...
}:
{
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')

    # Shell
    pkgs.nixfmt-rfc-style
    pkgs.ripgrep
    pkgs.lsd
    pkgs.bat
    pkgs.delta
    pkgs.broot
    pkgs.fd
    pkgs.sd
    pkgs.duf
    pkgs.dust
    pkgs.mcfly
    pkgs.tldr
    pkgs.httpie
    pkgs.tmux
    pkgs.procs
    pkgs.pay-respects
    pkgs.fx
    pkgs.csvkit
    pkgs.sqlite
    pkgs.duckdb
    # tmux alternative
    pkgs.zellij
    pkgs.terminator
    pkgs.starship
    pkgs.zsh-powerlevel10k
    pkgs.meslo-lgs-nf
    pkgs.fzf
    pkgs.devbox
    pkgs.nerd-fonts.fira-code
    pkgs.nerd-fonts.fira-mono
    pkgs.nerd-fonts.hack
    pkgs.nerd-fonts.meslo-lg
    pkgs.k9s
    pkgs.lazydocker
    pkgs.zoxide
    pkgs.mkcert
    pkgs.httm
    # Postgres CLI and backup
    pkgs.pgcli
    pkgs.restic
    pkgs.backrest
    pkgs.btop
    # File Manager
    pkgs.ranger
    pkgs.yazi
    # Tmux alternative
    pkgs.zellij
    # Java related stuff
    pkgs.gradle
    # C++ related stuff
    pkgs.gcc
    pkgs.conan
    pkgs.vcpkg-tool
    pkgs.ninja
    pkgs.cmake
    pkgs.doxygen
    pkgs.llvmPackages_20.clang-tools
    pkgs.cppcheck
    pkgs.valgrind
    # Python
    pkgs.python313
    pkgs.python313Packages.jinja2
    pkgs.jinja2-cli
    pkgs.python313Packages.pip
    pkgs.python313Packages.pygments
    # Node / Typescript
    pkgs.pnpm
    pkgs.nodejs_22
    pkgs.volta
    # Rust
    pkgs.rustc
    pkgs.cargo
    pkgs.clippy
    # Golang
    pkgs.go
    pkgs.hadolint
    pkgs.shellcheck
    # K8s and docker
    pkgs.dive
    pkgs.podman
    pkgs.podman-tui
    pkgs.kind
    pkgs.kubectl
    pkgs.kubernetes-helm
    pkgs.helmfile
    pkgs.kustomize
    pkgs.k3d
    pkgs.docker-credential-helpers
    # Terraform
    pkgs.opentofu
    # linecount
    pkgs.loccount
  ];

  programs.ripgrep.enable = true;
  programs.fd = {
    enable = true;
    ignores = [
      ".git/*"
      "*.bak"
    ];
  };
  programs.mcfly = {
    enable = true;
    enableZshIntegration = true;
    fuzzySearchFactor = 2;
    keyScheme = "vim";
  };
}

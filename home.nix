{
  config,
  pkgs,
  lib,
  ...
}:
{
  imports = [
    modules/zsh.nix
    modules/neovim.nix
    modules/git.nix
  ];
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "richard";
  home.homeDirectory = "/home/richard";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
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
    # tmux alternative
    pkgs.zellij
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
    pkgs.podman-tui
    # Postgres CLI and backup
    pkgs.pgcli
    pkgs.backrest
    pkgs.btop
    # File Manager
    pkgs.ranger
    pkgs.yazi
    # Tmux alternative
    pkgs.zellij
    # C++ related stuff
    pkgs.conan
    pkgs.ninja
    pkgs.cmake
    pkgs.doxygen
    pkgs.llvmPackages_20.clang-tools
    pkgs.valgrind
    # Python
    pkgs.python313
    pkgs.python313Packages.jinja2
    pkgs.jinja2-cli
    pkgs.python313Packages.pip
    pkgs.python313Packages.pygments
    # Node / Typescript
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

# Shell
pkgs.oh-my-zsh
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
# tmux alternative
pkgs.zellij
pkgs.terminator
pkgs.zsh-powerlevel10k
pkgs.meslo-lgs-nf
pkgs.fzf
pkgs.neovim-unwrapped
pkgs.vimPlugins.lazy-nvim
pkgs.devbox
pkgs.nerd-fonts.fira-code
pkgs.nerd-fonts.fira-mono
pkgs.nerd-fonts.hack
pkgs.nerd-fonts.meslo-lg
pkgs.k9s
pkgs.lazydocker
pkgs.zoxide
pkgs.pay-respects
pkgs.mkcert
pkgs.podman-tui
# Postgres CLI and backup
pkgs.pgcli
pkgs.backrest
pkgs.btop
# File Manager
pkgs.ranger
pkgs.yazi
pkgs.mc
# Tmux alternative
pkgs.zellij
# Git related stuff
pkgs.lazygit
pkgs.pre-commit
pkgs.git-bug
pkgs.git-lfs
pkgs.git-ignore
pkgs.gitleaks
# C++ related stuff
pkgs.conan
pkgs.ninja
pkgs.cmake
pkgs.doxygen
pkgs.llvmPackages_20.clang-tools
pkgs.valgrind
# Python
pkgs.python313
pkgs.python313Packages.jinja2
pkgs.jinja2-cli
pkgs.python313Packages.pip
pkgs.python313Packages.pygments
# Node / Typescript
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

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/richard/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
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
  initContent=''
  # This script was automatically generated by the broot program
  # More information can be found in https://github.com/Canop/broot
  # This function starts broot and executes the command
  # it produces, if any.
  # It's needed because some shell commands, like `cd`,
  # have no useful effect if executed in a subshell.
  function br {
      local cmd cmd_file code
      cmd_file=$(mktemp)
      if broot --outcmd "$cmd_file" "$@"; then
          cmd=$(<"$cmd_file")
          command rm -f "$cmd_file"
          eval "$cmd"
      else
          code=$?
          command rm -f "$cmd_file"
          return "$code"
      fi
  }

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d "" cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

  source ~/.p10k.zsh
  POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
  export PATH=$PATH:~/.rd/bin
  #eval "$(zoxide init zsh)"
  eval "$(pay-respects zsh --alias)"
  export VOLTA_HOME=$HOME/.volta
  export VOLTA_FEATURE_PNPM=1
  export PATH=$VOLTA_HOME/bin:$PATH
  export KREW_ROOT=$HOME/.krew
  export PATH=$KREW_ROOT/bin:$PATH

  ##THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
  #export SDKMAN_DIR="$HOME/.sdkman"
  #[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
  '';
};
programs.zsh.oh-my-zsh = {
  enable = true;
  custom = "$HOME/.oh-my-zsh/custom/";
  plugins = [
    "git"
    "sudo"
    "dotenv"
    "gitignore"
    "kubectl"
    "zoxide"
  ];
  theme = "powerlevel10k/powerlevel10k";
};
programs.neovim = {
  enable = true;
  defaultEditor = true;
  vimAlias = true;
};
programs.neovim.plugins = [
  pkgs.vimPlugins.nvim-tree-lua
  pkgs.vimPlugins.nvim-surround
] ;
programs.ripgrep.enable = true ;
programs.fd = {
  enable = true;
  ignores = [
  ".git/*"
  "*.bak"
  ];
};
programs.mcfly = {
  enable = true;
  enableZshIntegration = true ;
  fuzzySearchFactor = 2 ;
  keyScheme = "vim";
};

fonts.fontconfig.enable = true;

home.shell.enableZshIntegration = true;

# Set zsh as default shell on activation
home.activation.make-zsh-default-shell = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
# if zsh is not the current shell
PATH="/usr/bin:/bin:$PATH"
        ZSH_PATH="/home/richard/.nix-profile/bin/zsh"
        if [[ $(getent passwd richard) != *"$ZSH_PATH" ]]; then
          echo "setting zsh as default shell (using chsh). password might be necessay."
          if grep -q $ZSH_PATH /etc/shells; then
            echo "adding zsh to /etc/shells"
            run echo "$ZSH_PATH" | sudo tee -a /etc/shells
          fi
          echo "running chsh to make zsh the default shell"
          run chsh -s $ZSH_PATH richard
          echo "zsh is now set as default shell !"
        fi
    '';

  fonts.fontconfig.enable = true;
}

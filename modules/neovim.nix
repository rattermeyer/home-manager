{
  config,
  pkgs,
  lib,
  ...
}:
let
  nixvim = import (
    builtins.fetchGit {
      url = "https://github.com/nix-community/nixvim";
      ref = "main";
    }
  );
in
{
  imports = [
    nixvim.homeModules.nixvim
  ];

  home.packages = [
    pkgs.vimPlugins.lazy-nvim

  ];
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
  };
  programs.neovim.plugins = [
    pkgs.vimPlugins.nvim-tree-lua
    pkgs.vimPlugins.nvim-surround
  ];
  programs.nixvim = {
    enable = true;
    opts = {
      number = true;
      shiftwidth = 2;
      completeopt = [
        "menu"
        "menuone"
        "noselect"
      ];
      termguicolors = true;
    };
    plugins.lightline.enable = true;
    plugins.nvim-surround.enable = true;
    plugins.airline.enable = true;

  };
}

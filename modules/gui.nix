{
  config,
  pkgs,
  lib,
  ...
}:
{
  home.packages = [
     pkgs.vscode
     pkgs.vscode-extensions.ms-vscode.cpptools-extension-pack
  ];
}

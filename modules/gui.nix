{
  config,
  pkgs,
  lib,
  ...
}:
{
  home.packages = [
    pkgs.drawio
  ];
}

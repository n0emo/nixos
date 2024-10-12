{ pkgs, unstable, ... }:
{
  environment.systemPackages = with pkgs; [
    clang
    cmake
    gcc
    gnumake
    unstable.neovim
    nodejs
    vim
    yarn
  ];
}

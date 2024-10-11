{ pkgs, ...}:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    bitwarden
    curl
    firefox
    git
    kitty
    neovim
    telegram-desktop
    tree
    vim
    wget
  ];
}

{ pkgs, ...}:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    bitwarden
    curl
    firefox
    git
    kitty
    telegram-desktop
    tree
    unzip
    wget
    wl-clipboard
  ];
}

{ config, pkgs, ... }:
let
  unstable = import
    (builtins.fetchTarball https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz)
    { config = config.nixpkgs.config; };
in
{
  imports = [
    ./gaming/steam.nix
    ./hardware-configuration.nix
    ./hyprland.nix
    ./localization.nix
    (import ./programming/packages.nix { inherit unstable pkgs; })
    (import ./programming/rust.nix { inherit unstable pkgs; })
    ./programs/file-manager.nix
    ./programs/flatpak.nix
    ./programs/packages.nix
    ./programs/shell.nix
    ./security/polkit.nix
    ./system/boot.nix
    ./system/display-manager.nix
    ./system/networking.nix
    ./system/sound.nix
  ];

  networking.hostName = "ryzenpc";

  users.users.albert = {
    isNormalUser = true;
    description = "Albert";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  nix.settings.allowed-users = [
    "@wheel"
  ];

  system.stateVersion = "24.05";
}

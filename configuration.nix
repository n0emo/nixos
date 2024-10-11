{ config, pkgs, ... }:
{
  imports = [
      ./gaming/steam.nix
      ./hardware-configuration.nix
      ./hyprland.nix
      ./localization.nix
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

  system.stateVersion = "24.05";
}

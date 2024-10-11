{ pkgs, ... }:
{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    hyprlock
    hyprpaper
    rofi-wayland
    waybar
  ];
}

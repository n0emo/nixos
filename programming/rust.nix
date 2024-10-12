{ unstable, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    unstable.cargo
    unstable.cargo-cross
    unstable.cargo-watch
    unstable.rustc
  ];
}

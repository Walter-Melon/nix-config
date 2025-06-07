# Nix Configuration

This repository is home to the nix code that builds my systems.


## Resources

- [CTT Video Guides](https://christitus.com/nixos-explained/)
- [NixOS & Flakes Book](https://nixos-and-flakes.thiscute.world) (unofficial guide for beginners)
- [Extensive Config](https://github.com/ryan4yin/nix-config) (`i3-kickstarter` branch for the older and simpler setup)
- [NixOS on Raspberry Pi](https://wiki.nixos.org/wiki/NixOS_on_ARM/Raspberry_Pi) (NixOS Wiki)
- [NixOS on Raspberry Pi](https://nix.dev/tutorials/nixos/installing-nixos-on-a-raspberry-pi.html) (nix.dev Tutorial)

### Tidbits

- [WSL2 Flake config](https://github.com/nix-community/NixOS-WSL/discussions/374) (working starter files)
- [The nix command](https://wiki.nixos.org/wiki/Nix_command) (can be used on WSL2 with nix for e.g. flake templates)
- [Rebuild ignoring files](https://discourse.nixos.org/t/running-nixos-rebuild-does-not-add-new-files-have-i-misunderstood-its-purpose/20664) (only includes files when they got `git add`ed)


## How to install Nix and Deploy this Flake?

After installed NixOS with `nix-command` & `flake` enabled, you can deploy this flake with the following command:

```bash
sudo nixos-rebuild switch --flake .#nixos-test
```
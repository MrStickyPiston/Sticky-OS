# Sticky-OS &nbsp; [![bluebuild build badge](https://github.com/mrstickypiston/sticky-os/actions/workflows/build.yml/badge.svg)](https://github.com/mrstickypiston/sticky-os/actions/workflows/build.yml)

An atomic Linux distro based on Fedora Kinoite optimized for productivity and ease of use.

## Features
### System
  - automatic system updates
  - automatic app updates
  - rollback updates
  - uBlue kernel
  - [secure boot support](#secure-boot)
  - [nvidia driver support](#nvidia-drivers)
  - kde plasma desktop
  - disabled geoclue
  - disabled discover notifications
  - 1.1.1.1 dns resolution
  - tailscale support

### Apps
The default apps included out of the box on a new StickyOS installation. More apps can be installed using flatpak (flathub)
#### Utility
  - Flatseal
  - Boxbuddy
  - Konsole
  - KTailctl
  - OBS studio

#### Productivity
  - Okular
  - Librewolf
    - softer version of resist fingerprinting that allows dark mode
    - keep download & browsing history
    - enabled irefox sync
  - Libreoffice
  - Kwrite
  - Horizon client (`install-vmware-horizon`)

#### Development
  - VScode
    - devcontainers
    - no telemtry
    - custom interface
    - autosave files
    - git smart commit
    - no confirm git sync
    - automatic git fetch
  - Jetbrains toolbox (`install-jetbrains-toolbox`)

#### Social
  - Discord
  - Element (matrix client)

### Appearance
  - Breeze dark theme
  - Sticky piston wallpaper
  - Sticky piston profile picture

## Installation
Download the corresponding ISO for your hardware from the latest [build-iso action run](https://github.com/MrStickyPiston/Sticky-OS/actions/workflows/build-iso.yml). When not using an Nvidia graphics card,use the `sticky-os-latest-XX.iso` ISO. 
`sticky-os-nvidia-open-latest-XX.iso` is recommended for RTX series and later, for GTX series and below you should pick the
`sticky-os-nvidia-latest-XX.iso`.
When using an nvidia image, make sure to enable the [nvidia drivers](#nvidia-drivers).

### Secure boot
To enable secure boot, run the following command and follow the instructions:
```sh
setup-secure-boot
```

### Nvidia drivers
To enable the nvidia drivers, run the following command:
```sh
setup-nvidia
```

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/mrstickypiston/sticky-os
```

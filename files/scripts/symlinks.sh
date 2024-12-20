#!/usr/bin/env bash
set -oue pipefail

#### All symlinks StickyOS uses

## StickyPiston wallpaper
ln -sf /usr/share/backgrounds/sticky-os/sticky_piston.png /usr/share/backgrounds/default.png
ln -sf /usr/share/backgrounds/sticky-os/sticky_piston.png /usr/share/backgrounds/default-dark.png
ln -s /usr/share/backgrounds/sticky-os/sticky_piston.png /usr/share/wallpapers/StickyPiston/contents/images/2000x1500.png
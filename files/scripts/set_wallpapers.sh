#!/usr/bin/env bash
set -oue pipefail

## StickyPiston wallpaper
magick /usr/share/backgrounds/sticky-os/sticky_piston.png -quality 100 /usr/share/backgrounds/sticky-os/sticky_piston.jxl
ln -sf /usr/share/backgrounds/sticky-os/sticky_piston.jxl /usr/share/backgrounds/default.jxl
ln -sf /usr/share/backgrounds/sticky-os/sticky_piston.jxl /usr/share/backgrounds/default-dark.jxl
ln -s /usr/share/backgrounds/sticky-os/sticky_piston.png /usr/share/wallpapers/StickyPiston/contents/images/2000x1500.png
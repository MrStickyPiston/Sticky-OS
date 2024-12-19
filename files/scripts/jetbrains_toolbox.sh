#!/usr/bin/env bash
set -oue pipefail

#### Install JetBrains Toolbox tarball

## Variables
TMP_DIR="/tmp/"
INSTALL_DIR="/usr/share/JetBrains/Toolbox/bin"
SYMLINK_DIR="/usr/bin"

ARCHIVE_URL=$(curl -s 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release' | grep -Po '"linux":.*?[^\\]",' | awk -F ':' '{print $3,":"$4}'| sed 's/[", ]//g')
ARCHIVE_FILENAME=$(basename "$ARCHIVE_URL")

## Download archive
wget -q -cO "$TMP_DIR/$ARCHIVE_FILENAME" "$ARCHIVE_URL"

## Extract archive
mkdir -p "$INSTALL_DIR"
tar -xzf "$TMP_DIR/$ARCHIVE_FILENAME" -C "$INSTALL_DIR" --strip-components=1
chmod +x "$INSTALL_DIR/jetbrains-toolbox"

## Create symlink
mkdir -p $SYMLINK_DIR
ln -s "$INSTALL_DIR/jetbrains-toolbox" "$SYMLINK_DIR/jetbrains-toolbox"

## Run toolbox
jetbrains-toolbox

## Cleanup
rm "$TMP_DIR/$ARCHIVE_FILENAME"
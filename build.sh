sudo podman run --rm --privileged -e LANG="en_US.UTF-8" --volume .:/build-container-installer/build --security-opt label=disable --pull=newer ghcr.io/jasonn3/build-container-installer:latest \
    VERSION=41 \
    IMAGE_REPO=ghcr.io/mrstickypiston \
    IMAGE_NAME=sticky-os \
    IMAGE_TAG=latest \
    VARIANT=Kinoite \
    SECURE_BOOT_KEY_URL=https://github.com/ublue-os/bazzite/blob/main/secure_boot.der \
    ENROLLMENT_PASSWORD=universalblue
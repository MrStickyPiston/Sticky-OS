rm -rf ./iso-output
mkdir ./iso-output
sudo podman run --rm --privileged --volume ./iso-output:/build-container-installer/build --security-opt label=disable --pull=newer ghcr.io/jasonn3/build-container-installer:latest IMAGE_REPO=ghcr.io/mrstickypiston IMAGE_NAME=sticky-os IMAGE_TAG=latest VARIANT=Kinoite VERSION=41
#!/usr/bin/bash
rpm-ostree kargs \
	--append-if-missing=rd.driver.blacklist=nouveau \
	--append-if-missing=modprobe.blacklist=nouveau \
	--append-if-missing=nvidia-drm.modeset=1 \
	--append-if-missing=nvidia-drm.fbdev=1 \
	--append-if-missing=initcall_blacklist=simpledrm_platform_driver_init


DESCRIPTION = "Basic image"
LICENSE = "MIT"

# set password to cozmic
inherit extrausers
EXTRA_USERS_PARAMS = " \
    usermod -P cozmic root; \
    "

inherit core-image

# Package gesture
IMAGE_FEATURES += "package-management"

# SSH gesture
IMAGE_FEATURES += "ssh-server-dropbear"

HOTSPOT_INSTALL = " \
    	hostapd \
  	dnsmasq \
"

# Audio
ALSA_INSTALL = " \
    	alsa-utils \
    	alsa-tools \
    	shairport-sync \
    	shairport-sync-metadata-reader \
"

CORE_OS_INSTALL = " \
	bc \
    	dbus \
    	bluez5 \
    	canutils \
    	sysfsutils \ 	
    	kernel-image \
        kernel-modules \
        kernel-devicetree \
"

IMAGE_INSTALL += " \
	${CORE_OS_INSTALL} \
	psplash \
	clicks-board-init \
	openssh-sftp-server \
	packagegroup-distro-base \
	packagegroup-machine-base \
	${ALSA_INSTALL} \
	${HOTSPOT_INSTALL} \
	packagegroup-tools-io \
    	${CORE_IMAGE_EXTRA_INSTALL} \
"

create_overlay_directory() {
    	mkdir -p ${IMAGE_ROOTFS}/lib/firmware/nextthingco/chip
    	mkdir -p ${IMAGE_ROOTFS}/lib/firmware/nextthingco/chip/early
}

ROOTFS_POSTPROCESS_COMMAND += " \
    	create_overlay_directory ; \
"

# some default locales
IMAGE_LINGUAS ?= "fr-fr en-us"

export IMAGE_BASENAME = "base-image"


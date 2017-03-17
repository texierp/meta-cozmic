DESCRIPTION = "Overlays"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
PR = "r0"

PACKAGE_ARCH = "${MACHINE_ARCH}"

SRC_URI = " \
	git://github.com/texierp/overlays;protocol=git \
"

SRCREV = "${AUTOREV}"
S = "${WORKDIR}/git"

do_install() {
	install -d ${D}${bindir}
        install -d ${D}/lib/firmware/nextthingco/chip
        install -d ${D}/lib/firmware/nextthingco/chip/early
        
        install -m 0755 ${S}/*.dtbo ${D}/lib/firmware/nextthingco/chip/
        
        install -m 0755 ${S}/overlay ${D}${bindir}
}

FILES_${PN} += "/lib/firmware/nextthingco/chip/ /lib/firmware/nextthingco/chip/early"


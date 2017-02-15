DESCRIPTION = "The SoX Resampler library `libsoxr' performs one-dimensional sample-rate conversion"
LICENSE="GPLv2"
LIC_FILES_CHKSUM = "file://LICENCE;md5=3e21526dd81bc9e14198035e1433be2c"

SRC_URI = " \
	git://git.code.sf.net/p/soxr/code;protocol=git \
	"

SRCREV = "5fa7eeb9a3df65452970566abc027db566012caf"

S = "${WORKDIR}/git"

inherit cmake

INSANE_SKIP_${PN} = "already-stripped"

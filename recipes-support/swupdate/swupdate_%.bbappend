FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append_chip += " \
	file://defconfig \
	"	

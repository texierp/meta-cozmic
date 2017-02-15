FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append_chip += " \
	file://0001-add-spi2.patch \
	file://0001-gpio-exporter-backport.patch \
	file://0001-ad525x_dpot-spi-Add-device-tree-support.patch \
	"	

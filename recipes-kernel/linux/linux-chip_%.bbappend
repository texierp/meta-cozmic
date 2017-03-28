FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append_chip += " \
	file://0001-gpio-exporter-backport.patch \
	file://0001-add-spi2.patch \
	file://0001-Add-Osc-10M.patch \
	file://0001-ad525x_dpot-spi-Add-device-tree-support.patch \
	file://0001-Backport-mcp4725-driver.patch \
	file://0001-Add-debug-to-cape-manager-driver.patch \
	file://0001-Add-potentiometers-backport-from-Kernel-4.10.patch \
	"	
	
KERNEL_MODULE_AUTOLOAD += " \
			g_cdc \
			w1_ds2431 \
			dht11 \
			enc28j60 \
			mpl3115 \
			mcp251x \
			sun4i_lradc \
			mcp4725 \
			mcp320x \
			ds1621 \
			mcp4531 \
			"

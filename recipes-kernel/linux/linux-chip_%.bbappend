FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append_chip += " \
	file://0001-add-spi2.patch \
	file://0001-gpio-exporter-backport.patch \
	file://0001-Add-osc10M-osc14M.patch \
	file://0001-ad525x_dpot-spi-Add-device-tree-support.patch \
	file://0001-Backport-mcp4725-driver.patch \
	"	
	
KERNEL_MODULE_AUTOLOAD += " \
			g_cdc \
			w1_ds2431 \
			dht11 \
			enc28j60 \
			mpl3115 \
			can_mcp251x \
			sun4i_lradc \
			mcp4725 \
			ds1631 \
			"

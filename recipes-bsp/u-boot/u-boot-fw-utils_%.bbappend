FILESEXTRAPATHS_prepend := "${THISDIR}/u-boot-fw-utils:"

SRC_URI += "\
    file://fw_env.config \
    "
    
do_install_append () {
	install -d ${D}${sysconfdir}

	install -m 0644 ${WORKDIR}/fw_env.config ${D}${sysconfdir}/fw_env.config
}

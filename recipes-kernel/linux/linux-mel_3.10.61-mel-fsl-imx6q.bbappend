FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

KERNEL_DEFCONFIG = "mx6q-caamhw-disabled.config"

SRC_URI += "file://mx6q-caamhw-disabled.config"

do_prepare_config_prepend() {
    cp ${WORKDIR}/${KERNEL_DEFCONFIG} ${S}
}

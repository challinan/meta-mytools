IMAGE_INSTALL += "tree hello file"

ROOTFS_POSTPROCESS_COMMAND_append = " copy_conf_to_image; "

copy_conf_to_image() {
    cp ${TOPDIR}/conf/local.conf ${IMAGE_ROOTFS}/boot
    cp ${TOPDIR}/conf/bblayers.conf ${IMAGE_ROOTFS}/boot
    echo "Built from: ${TOPDIR} using ${PN}" >>${IMAGE_ROOTFS}/etc/issue
}

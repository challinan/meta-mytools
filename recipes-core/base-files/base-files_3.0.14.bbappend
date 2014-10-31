FILESEXTRAPATHS_prepend = "${THISDIR}/files:"

do_install_prepend() {
    if [ -f ${WORKDIR}/profile ]; then
        echo "" >> profile
        echo "alias dir='ls -l'" >> profile
    fi
}

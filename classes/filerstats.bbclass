# Do something for each recipe processed

do_filer_report[nostamp] = "1"

addtask filer_report before do_populate_sysroot after do_unpack
addtask filer_report before do_populate_sysroot_setscene after do_unpack

do_filer_report() {
    echo "DATETIME: ${DATETIME}" >>${TOPDIR}/recipes-${DATETIME}.txt
    echo "PROVIDES: ${PROVIDES}" >>${TOPDIR}/recipes-${DATETIME}.txt
    echo "FILE: ${FILE}" >>${TOPDIR}/recipes-${DATETIME}.txt
    echo "PN: ${PN}" >>${TOPDIR}/recipes-${DATETIME}.txt
    echo "BPN: ${BPN}" >>${TOPDIR}/recipes-${DATETIME}.txt
    echo "PACKAGES: ${PACKAGES}" >>${TOPDIR}/recipes-${DATETIME}.txt
    echo "LICENSE: ${LICENSE}" >>${TOPDIR}/recipes-${DATETIME}.txt
    echo "DEPENDS: ${DEPENDS}" >>${TOPDIR}/recipes-${DATETIME}.txt
    echo "SSTATETASKS: ${SSTATETASKS}" >>${TOPDIR}/recipes-${DATETIME}.txt
    echo "SRC_URI: ${SRC_URI}" >>${TOPDIR}/recipes-${DATETIME}.txt
    echo "" >>${TOPDIR}/recipes-${DATETIME}.txt
}


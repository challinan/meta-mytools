# Copyright (C) 2015 Chris Hallinan <challinan@gmail.com>
# Released under the MIT license (see COPYING.MIT for the terms)

DESCRIPTION = "Pscanner"
LICENSE = "MIT"
PR = "r0"

LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690"

SRC_URI = "file://pscanner.c"

do_compile() {
    cp ${WORKDIR}/pscanner.c ${S}
    ${CC} ${CFLAGS} -o pscanner pscanner.c
}

do_install() {
    install -d ${D}/${bindir}
    install -m 0755 ${S}/pscanner ${D}/${bindir}
}

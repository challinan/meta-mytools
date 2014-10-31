DESCRIPTION = "Tree"
HOMEPAGE = "https://launchpad.net/ubuntu/+source/tree/"
SECTION = "utils"
LICENSE = "GPLv2"

INC_PR = "r0"

LIC_FILES_CHKSUM = "file://LICENSE;md5=393a5ca445f6965873eca0259a17f833"

SRC_URI[md5sum] = "04e967a3f4108d50cde3b4b0e89e970a"
SRC_URI[sha256sum] = "4dc470a74880338b01da41701d8db90d0fb178877e526d385931a007d68d7591"

SRC_URI = "https://launchpad.net/ubuntu/+archive/primary/+files/tree_1.6.0.orig.tar.gz \
           file://remove-strip-on-install.patch \
"

do_configure() {
}

EXTRA_OEMAKE = "prefix=${D} CC='${CC}' CFLAGS='${CFLAGS}' LDFLAGS='${LDFLAGS}' LD='${LD}'"

do_install() {
	oe_runmake 'DESTDIR=${D}' install
}

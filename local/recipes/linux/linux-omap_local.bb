require linux.inc

DESCRIPTION = "Linux kernel for OMAP processors (Working copy)"
KERNEL_IMAGETYPE = "uImage"

COMPATIBLE_MACHINE = "beagleboard"

DEFAULT_PREFERENCE = "-1"

PR = "r18"

SRC_URI = " \
		   file://defconfig \
"

S = "${OE_OLAY_LOCAL}/src/linux-omap-2.6"

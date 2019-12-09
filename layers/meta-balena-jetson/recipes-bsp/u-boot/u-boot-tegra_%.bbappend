UBOOT_KCONFIG_SUPPORT = "1"

inherit resin-u-boot

RESIN_BOOT_PART = "0xC"
RESIN_DEFAULT_ROOT_PART = "0xD"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append = " \
  file://0001-Integrate-resin-u-boot.patch \
  file://0002-Change-default-root-partition.patch \
  file://0003-jetson-tx2-Enable-CONFIG_CMD_SETEXPR.patch \
  file://0004-u-boot-Increase-env-size.patch \
  file://0005-Use-default-menu-entry-from-extlinux.conf.patch \
"

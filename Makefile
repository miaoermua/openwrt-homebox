# Copyright (C) 2016 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-homebox
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
LUCI_TITLE:=LuCI support for homebox
LUCI_DEPENDS:=+homebox
LUCI_PKGARCH:=all

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature

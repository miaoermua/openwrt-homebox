#
# Copyright (C) 2024 miaoermua <https://github.com/miaoermua>
#
# Licensed under the Apache License, Version 2.0
#


include $(TOPDIR)/rules.mk

PKG_NAME:=homebox
PKG_VERSION:=0.1.1
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/XGHeaven/homebox/releases/download/v$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-linux-$(ARCH).tar.gz
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/homebox
  SECTION:=net
  CATEGORY:=Web Servers/Proxies
  TITLE:=homebox-bin
  URL:=https://github.com/XGHeaven/homebox
  DEPENDS:=@TARGET_$(ARCH_DEP)
endef

define Package/homebox/description
  Homebox backend binary packaged for OpenWrt.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	# Extract .tar.gz -> .tar -> binary
	tar -xzf $(DL_DIR)/$(PKG_SOURCE) -C $(PKG_BUILD_DIR)
	cd $(PKG_BUILD_DIR) && tar -xf homebox-linux-$(ARCH).tar
endef

define Build/Compile
	# nothing to compile
endef

define Package/homebox/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/homebox-linux-$(ARCH) $(1)/usr/bin/homebox
endef

$(eval $(call BuildPackage,homebox))

# call BuildPackage - OpenWrt buildroot signature

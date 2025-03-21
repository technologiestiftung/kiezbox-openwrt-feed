# Copyright (C) 2025 James Knippes <james-knippes@mailbox.org>

include $(TOPDIR)/rules.mk

PKG_NAME:=kb-extra-app
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/kb-extra-app
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=Kiezbox emergency app package and dependencies
  DEPENDS:=+lighttpd +@LIGHTTPD_SSL +@LIGHTTPD_CRYPTOLIB_OPENSSL +lighttpd-mod-accesslog +lighttpd-mod-alias +lighttpd-mod-expire +lighttpd-mod-openssl +lighttpd-mod-proxy +lighttpd-mod-redirect +lighttpd-mod-rewrite
  PKGARCH:=all
endef

define Package/kb-extra-app/description
	The kiezbox emergency app and dependencies
	This includes lighttpd (+modules) needed for captive portal functionality and PWA features
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/kb-extra-app/install
	$(INSTALL_DIR) $(1)/opt/kb-www
	cp -r ./files/app/* $(1)/opt/kb-www
endef

$(eval $(call BuildPackage,kb-extra-app))

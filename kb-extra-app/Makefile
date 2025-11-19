# Copyright (C) 2025 James Knippes <james-knippes@mailbox.org>

include $(TOPDIR)/rules.mk

PKG_NAME:=kb-extra-app
PKG_VERSION:=1.1
PKG_RELEASE:=5

include $(INCLUDE_DIR)/package.mk

define Package/kb-extra-app
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=Kiezbox emergency app package and dependencies
  DEPENDS:=+lighttpd +@LIGHTTPD_SSL +@LIGHTTPD_CRYPTOLIB_OPENSSL +lighttpd-mod-access +lighttpd-mod-accesslog +lighttpd-mod-auth +lighttpd-mod-authn_file +lighttpd-mod-alias +lighttpd-mod-cgi +lighttpd-mod-expire +lighttpd-mod-openssl +lighttpd-mod-proxy +lighttpd-mod-redirect +lighttpd-mod-rewrite +opendoas +bind-dig
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
	$(INSTALL_DIR) $(1)/etc/
	cp -r ./files/etc/* $(1)/etc
	$(INSTALL_DIR) $(1)/opt/
	cp -r ./files/opt/* $(1)/opt
endef

$(eval $(call BuildPackage,kb-extra-app))

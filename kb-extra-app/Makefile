# Copyright (C) 2025 James Knippes <james-knippes@mailbox.org>

include $(TOPDIR)/rules.mk

PKG_NAME:=kb-extra-app
PKG_VERSION:=1.1
PKG_RELEASE:=2

include $(INCLUDE_DIR)/package.mk

define Package/kb-extra-app
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=Kiezbox emergency app package and dependencies
  DEPENDS:=+lighttpd +@LIGHTTPD_SSL +@LIGHTTPD_CRYPTOLIB_OPENSSL +lighttpd-mod-accesslog +lighttpd-mod-alias +lighttpd-mod-cgi +lighttpd-mod-expire +lighttpd-mod-openssl +lighttpd-mod-proxy +lighttpd-mod-redirect +lighttpd-mod-rewrite
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
	$(INSTALL_DIR) $(1)/opt/kb-portal
	cp -r ./files/portal/* $(1)/opt/kb-portal
	$(INSTALL_DIR) $(1)/etc/lighttpd/conf.d
	$(INSTALL_DATA) ./files/90_kiezbox.conf $(1)/etc/lighttpd/conf.d/90_kiezbox.conf
	$(INSTALL_DIR) $(1)/opt/kb-script
	$(INSTALL_BIN) ./files/lighttpd_config.sh $(1)/opt/kb-script/
	$(INSTALL_BIN) ./files/portal_api_cgi.sh $(1)/opt/kb-script/
endef

$(eval $(call BuildPackage,kb-extra-app))

include $(TOPDIR)/rules.mk

PKG_NAME:=kb-demo-conf
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_LICENSE:=GPL-2.0-only

include $(INCLUDE_DIR)/package.mk

define Package/kb-demo-conf
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=KiezBox demo project configuration
  PKGARCH:=all
endef

define Package/kb-demo-conf/description
	Project, district and box configuration for testing the KiezBox setup
	without the private project files. Uses well known passwords, do not use
	it in production.
endef

define Package/kb-demo-conf/conffiles
/etc/config/kbproj
/etc/config/kbdist
/etc/config/kboxes
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/kb-demo-conf/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./files/etc/config/kbproj $(1)/etc/config
	$(INSTALL_CONF) ./files/etc/config/kbdist $(1)/etc/config
	$(INSTALL_CONF) ./files/etc/config/kboxes $(1)/etc/config
endef

$(eval $(call BuildPackage,kb-demo-conf))

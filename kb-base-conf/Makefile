# Copyright (C) 2024 James Knippes <james-knippes@mailbox.org>

include $(TOPDIR)/rules.mk

# Name, version and release number																	    
# The name and version of your package are used to define the variable to point to the build directory of your package: $(PKG_BUILD_DIR)
PKG_NAME:=kb-base-conf
PKG_VERSION:=1.0
PKG_RELEASE:=8

PKG_LICENSE:=GPL-2.0-only

include $(INCLUDE_DIR)/package.mk

define Package/kb-base-conf/default
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  PKGARCH:=all
endef

define Package/kb-base-conf-tiny
$(call Package/kb-base-conf/default)
  TITLE:=KiezBox base setup scripts (mesh only)
  DEPENDS:= \
	+kmod-batman-adv \
	+batctl-full \
	+ip-bridge \
	+shadow-utils \
	+shadow-usermod
endef

define Package/kb-base-conf
$(call Package/kb-base-conf/default)
  TITLE:=KiezBox basefiles and setup scripts
  DEPENDS:=+kb-base-conf-tiny
endef

define Package/kb-base-conf-recovery
$(call Package/kb-base-conf/default)
  TITLE:=KiezBox setup scripts for the rescue image
  DEPENDS:=+kb-base-conf-tiny
  CONFLICTS:=kb-base-conf
endef

define Package/kb-base-conf-tiny/description
	Contains the project independent setup of the KiezBox mesh network.
endef

define Package/kb-base-conf/description
	Contains project independend setup and configuration files for the KiezBox initialization.
endef

define Package/kb-base-conf-recovery/description
	Contains the setup of the KiezBox mesh network and a recovery access
	point, which is bridged into the lan.
endef

define Package/kb-base-conf-tiny/conffiles
/etc/config/kb
/etc/config/kbproj
/etc/config/kboxes
/etc/config/kbdist
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/kb-base-conf-tiny/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_DATA) ./files/etc/uci-defaults/70_kb_00_init $(1)/etc/uci-defaults
	$(INSTALL_DATA) ./files/etc/uci-defaults/70_kb_10_rootpw $(1)/etc/uci-defaults
	$(INSTALL_DATA) ./files/etc/uci-defaults/70_kb_20_lan $(1)/etc/uci-defaults
	$(INSTALL_DATA) ./files/etc/uci-defaults/70_kb_20_mesh $(1)/etc/uci-defaults
endef

define Package/kb-base-conf/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_DATA) ./files/etc/uci-defaults/70_kb_10_hostname $(1)/etc/uci-defaults
	$(INSTALL_DATA) ./files/etc/uci-defaults/70_kb_30_captive $(1)/etc/uci-defaults
	$(INSTALL_DATA) ./files/etc/uci-defaults/70_kb_30_client $(1)/etc/uci-defaults
	$(INSTALL_DATA) ./files/etc/uci-defaults/70_kb_50_uhttpd $(1)/etc/uci-defaults
	$(INSTALL_DIR) $(1)/opt/
	cp -r ./files/opt/* $(1)/opt
endef

define Package/kb-base-conf-recovery/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_DATA) ./files/etc/uci-defaults/70_kb_40_recovery $(1)/etc/uci-defaults
endef

$(eval $(call BuildPackage,kb-base-conf-tiny))
$(eval $(call BuildPackage,kb-base-conf))
$(eval $(call BuildPackage,kb-base-conf-recovery))

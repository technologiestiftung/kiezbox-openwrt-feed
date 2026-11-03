include $(TOPDIR)/rules.mk

PKG_NAME:=kb-rescue
PKG_VERSION:=1.0
PKG_RELEASE:=3

PKG_LICENSE:=GPL-2.0-only

include $(INCLUDE_DIR)/package.mk

define Package/kb-rescue
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=KiezBox rescue image
  DEPENDS:= \
	+kb-common \
	+kb-base-conf-recovery
  PKGARCH:=all
endef

define Package/kb-rescue/description
	Meta package for the KiezBox rescue image
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/kb-rescue/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_DATA) ./files/60_kb_rescue $(1)/etc/uci-defaults
endef

$(eval $(call BuildPackage,kb-rescue))

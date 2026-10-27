include $(TOPDIR)/rules.mk

PKG_NAME:=kb-production
PKG_VERSION:=1.0
PKG_RELEASE:=2

PKG_LICENSE:=GPL-2.0-only

include $(INCLUDE_DIR)/package.mk

define Package/kb-production
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=KiezBox production image
  DEPENDS:= \
	+kb-base-conf \
	+kb-extra-app \
	+kb-extra-debug \
	+kb-extra-phone \
	+kb-extra-storage \
	+kb-gateway-service \
	+kb-keyring-dev
  PKGARCH:=all
endef

define Package/kb-production/description
	Meta package for the KiezBox production image
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/kb-production/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_DATA) ./files/60_kb_production $(1)/etc/uci-defaults
endef

$(eval $(call BuildPackage,kb-production))

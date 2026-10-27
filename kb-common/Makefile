include $(TOPDIR)/rules.mk

PKG_NAME:=kb-common
PKG_VERSION:=1.0
PKG_RELEASE:=3

PKG_LICENSE:=GPL-2.0-only

include $(INCLUDE_DIR)/package.mk

define Package/kb-common
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=KiezBox files for the production and the rescue image
  DEPENDS:= \
	+kb-fw-meshtastic \
	+tsb-espflash \
	+uboot-envtools
  PKGARCH:=all
endef

define Package/kb-common/description
	Files and dependencies shared by the KiezBox production and rescue images
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/kb-common/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) ./files/kb-reboot-rescue $(1)/usr/sbin
endef

$(eval $(call BuildPackage,kb-common))

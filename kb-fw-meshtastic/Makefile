include $(TOPDIR)/rules.mk

PKG_NAME:=kb-fw-meshtastic
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_LICENSE:=GPL-2.0-only

include $(INCLUDE_DIR)/package.mk

define Package/kb-fw-meshtastic
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=KiezBox Meshtastic firmware for the ESP32-S3
  DEPENDS:=+kmod-usb-serial-cp210x
  PKGARCH:=all
endef

define Package/kb-fw-meshtastic/description
	Firmware binaries and flashing script for the KiezBox Meshtastic firmware
endef

KB_FW_DIR:=/usr/share/kb-fw/meshtastic

define Build/Configure
endef

define Build/Compile
endef

define Package/kb-fw-meshtastic/install
	$(INSTALL_DIR) $(1)$(KB_FW_DIR)
	$(if $(wildcard ./files/firmware/*), \
		$(CP) ./files/firmware/* $(1)$(KB_FW_DIR)/)
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) ./files/kb-flash-meshtastic $(1)/usr/sbin
endef

$(eval $(call BuildPackage,kb-fw-meshtastic))

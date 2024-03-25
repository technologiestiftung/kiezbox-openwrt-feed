# Copyright (C) 2024 James Knippes <james-knippes@mailbox.org>

include $(TOPDIR)/rules.mk

# Name, version and release number																	    
# The name and version of your package are used to define the variable to point to the build directory of your package: $(PKG_BUILD_DIR)
PKG_NAME:=kb-base-conf
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

# Package definition; instructs on how and where our package will appear in the overall configuration menu ('make menuconfig')
define Package/kb-base-conf
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=KiezBox basefiles and setup scripts
  DEPENDS:=+wpad-mbedtls +mesh11sd +luci-proto-batman-adv +kmod-batman-adv +batctl-full +ip-bridge +shadow-usermod
  PKGARCH:=all
endef

# Package description; a more verbose description on what our package does
define Package/kb-base-conf/description
	Contains project independend setup and configuration files for the KiezBox initialization.
endef

define Package/kb-base-conf/conffiles
/etc/config/kb
endef

define Build/Configure
endef

define Build/Compile
endef

# Package install instructions; create a directory inside the package to hold our executable, and then copy the executable we built previously into the folder
define Package/kb-base-conf/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DATA) ./files/etc/config/kb $(1)/etc/config
	$(INSTALL_DATA) ./files/etc/config/mesh11sd $(1)/etc/config
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_DATA) ./files/etc/uci-defaults/70_kb_system $(1)/etc/uci-defaults
	$(INSTALL_DIR) $(1)/etc/dropbear
	$(INSTALL_DATA) ./files/etc/dropbear/authorized_keys $(1)/etc/dropbear
endef

# This command is always the last, it uses the definitions and variables we give above in order to get the job done
$(eval $(call BuildPackage,kb-base-conf))

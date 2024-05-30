# Copyright (C) 2016 LEDE project

include $(TOPDIR)/rules.mk

# Name, version and release number
# The name and version of your package are used to define the variable to point to the build directory of your package: $(PKG_BUILD_DIR)
PKG_NAME:=kb-keyring-dev
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

# Package definition; instructs on how and where our package will appear in the overall configuration menu ('make menuconfig')
define Package/kb-keyring-dev
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=Kiezbox Development keyring
endef

# Package description; a more verbose description on what our package does
define Package/kb-keyring-dev/description
  The keyring of with the using keys for development
endef

Build/Compile=

# Package install instructions; create a directory inside the package to hold our executable, and then copy the executable we built previously into the folder
define Package/kb-keyring-dev/install
	$(INSTALL_DIR) $(1)/etc/opkg/keys/
	# usign key for development builds
	$(INSTALL_DATA) ./45cd461c6cbba0e5 $(1)/etc/opkg/keys/
endef

# This command is always the last, it uses the definitions and variables we give above in order to get the job done
$(eval $(call BuildPackage,kb-keyring-dev))

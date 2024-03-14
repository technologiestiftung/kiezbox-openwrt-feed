# Copyright (C) 2024 James Knippes <james-knippes@mailbox.org>

include $(TOPDIR)/rules.mk

# Name, version and release number																	    
# The name and version of your package are used to define the variable to point to the build directory of your package: $(PKG_BUILD_DIR)
PKG_NAME:=kb-extra-storage
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

# Package definition; instructs on how and where our package will appear in the overall configuration menu ('make menuconfig')
define Package/kb-extra-storage
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=KiezBox extra packages for usb storage
  DEPENDS:=+block-mount +e2fsprogs +kmod-usb-storage-uas +kmod-usb3 +kmod-fs-ext4
  PKGARCH:=all
endef

# Package description; a more verbose description on what our package does
define Package/kb-extra-storage/description
	Adds dependencies for packages needed for usb storage
endef

# This command is always the last, it uses the definitions and variables we give above in order to get the job done
$(eval $(call BuildPackage,kb-extra-storage))

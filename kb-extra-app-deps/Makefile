# Copyright (C) 2024 James Knippes <james-knippes@mailbox.org>

include $(TOPDIR)/rules.mk

# Name, version and release number
# The name and version of your package are used to define the variable to point to the build directory of your package: $(PKG_BUILD_DIR)
PKG_NAME:=kb-extra-app-deps
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

# Package definition; instructs on how and where our package will appear in the overall configuration menu ('make menuconfig')
define Package/kb-extra-app-deps
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=KiezBox extra packages for messages app
  DEPENDS:=+python3 +python3-venv +python3-pip +git +git-http
  PKGARCH:=all
endef

# Package description; a more verbose description on what our package does
define Package/kb-extra-app-deps/description
	Adds dependencies for deploying the python based messages app
endef

# define some sections, needed to create an entry in the package database
define Build/Configure
endef

define Build/Compile
endef

define Package/kb-extra-app-deps/install
	exit 0
endef

# This command is always the last, it uses the definitions and variables we give above in order to get the job done
$(eval $(call BuildPackage,kb-extra-app-deps))

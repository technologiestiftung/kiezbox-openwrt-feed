# Copyright (C) 2024 James Knippes <james-knippes@mailbox.org>

include $(TOPDIR)/rules.mk

GIT_COMMIT_DATE:=$(shell git log -n 1 --pretty=%ad --date=short . )
GIT_COMMIT_TSTAMP:=$(shell git log -n 1 --pretty=%at . )

# Name, version and release number
# The name and version of your package are used to define the variable to point to the build directory of your package: $(PKG_BUILD_DIR)
PKG_NAME:=kb-gateway-service
PKG_VERSION=$(GIT_COMMIT_DATE)-$(GIT_COMMIT_TSTAMP)
PKG_RELEASE:=4

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/technologiestiftung/kiezbox-gateway-service.git
PKG_SOURCE_VERSION:=507a029d7f429611cdba8e9ece17c39155d1c184

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_BUILD_FLAGS:=no-mips16

GO_PKG:=kiezbox
GO_PKG_BUILD_PKG:=kiezbox/cmd

include $(INCLUDE_DIR)/package.mk
include ../../packages/lang/golang/golang-package.mk

# Package definition; instructs on how and where our package will appear in the overall configuration menu ('make menuconfig')
define Package/kb-gateway-service
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=KiezBox gateway service
  DEPENDS:=$(GO_ARCH_DEPENDS) +kmod-usb-serial-cp210x
endef

# Package description; a more verbose description on what our package does
define Package/kb-gateway-service/description
	Contains the kiezbox gateway service for communication with a meshtastic serial device
endef

# Package install instructions; create a directory inside the package to hold our executable, and then copy the executable we built previously into the folder
define Package/kb-gateway-service/install
	$(call GoPackage/Package/Install/Bin,$(1))
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/kb-gateway.init $(1)/etc/init.d/kb-gateway
endef

# This command is always the last, it uses the definitions and variables we give above in order to get the job done
$(eval $(call GoBinPackage,kb-gateway-service))
$(eval $(call BuildPackage,kb-gateway-service))

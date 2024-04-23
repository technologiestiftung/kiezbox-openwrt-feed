# Copyright (C) 2024 James Knippes <james-knippes@mailbox.org>

include $(TOPDIR)/rules.mk

# Name, version and release number																	    
# The name and version of your package are used to define the variable to point to the build directory of your package: $(PKG_BUILD_DIR)
PKG_NAME:=kb-extra-debug
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

# Package definition; instructs on how and where our package will appear in the overall configuration menu ('make menuconfig')
define Package/kb-extra-debug
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=KiezBox extra tools for debugging
  DEPENDS:=+batctl-full +ip-bridge +iperf3 +iputils-ping +iputils-tracepath +nload +openssh-sftp-server +tcpdump +tmux +luci +luci-ssl
  PKGARCH:=all
endef

# Package description; a more verbose description on what our package does
define Package/kb-extra-debug/description
	Adds dependencies for packages usefull for debugging the (mesh) network
endef

# define some sections, needed to create an entry in the package database
define Build/Configure
endef

define Build/Compile
endef

define Package/kb-extra-debug/install
	exit 0
endef

# This command is always the last, it uses the definitions and variables we give above in order to get the job done
$(eval $(call BuildPackage,kb-extra-debug))

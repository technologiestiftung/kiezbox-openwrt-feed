# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=tsb-espflash
# branch tsb/size_optimizations of the Technologiestiftung fork
PKG_SOURCE_DATE:=2026-10-08
PKG_SOURCE_VERSION:=70f214c76b44b2aea3ffb53678fec8520c0f7300
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/technologiestiftung/espflash.git
PKG_MIRROR_HASH:=2608cf9591c44a117fdc0b682ce34c40aa1190c643c56705b4d44bc5e7e566f4

PKG_LICENSE:=MIT Apache-2.0
PKG_LICENSE_FILES:=LICENSE-MIT LICENSE-APACHE

PKG_BUILD_DEPENDS:=rust/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/rust/rust-package.mk

define Package/tsb-espflash
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=Flashing tool for Espressif devices (TSB fork)
  URL:=https://github.com/technologiestiftung/espflash
  DEPENDS:=$(RUST_ARCH_DEPENDS)
endef

define Package/tsb-espflash/description
  Size optimized espflash fork. Only able to flash ESP32-S3 right now,
  needs the stub for other chips in order to flash them too.
endef

ESPFLASH_RESOURCE_DIR:=/usr/share/espflash

# the cargo workspace contains several crates, build the espflash one
MAKE_PATH:=espflash

# nothing is bundled into the binary, the stub is loaded from
# ESPFLASH_RESOURCE_DIR, which is compiled in as the default
RUST_PKG_FEATURES:=cli
CARGO_PKG_ARGS+= --no-default-features
CARGO_PKG_VARS+= ESPFLASH_RESOURCE_DIR=$(ESPFLASH_RESOURCE_DIR)
# no unwinding code, a panic just ends the program
CARGO_PKG_VARS+= CARGO_PROFILE_RELEASE_PANIC=abort

define Package/tsb-espflash/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/bin/espflash $(1)/usr/bin/
	$(INSTALL_DIR) $(1)$(ESPFLASH_RESOURCE_DIR)/stubs
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/espflash/resources/stubs/esp32s3.toml \
		$(1)$(ESPFLASH_RESOURCE_DIR)/stubs/
endef

$(eval $(call RustBinPackage,tsb-espflash))
$(eval $(call BuildPackage,tsb-espflash))

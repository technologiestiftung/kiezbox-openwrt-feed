# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=mtk_uartboot
PKG_SOURCE_DATE:=2024-12-07
PKG_SOURCE_VERSION:=b0ec7bdf1bab7089df948e745e17d206f3426dc1
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/981213/mtk_uartboot.git
PKG_MIRROR_HASH:=fff613a40c2ecea3560308fe0416b2aaea4a6e4f6b27c82993f63db1c18fba95

PKG_LICENSE:=AGPL-3.0-only
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=rust/host
PKG_BUILD_DEPENDS:=mtk_uartboot/host
HOST_BUILD_PARALLEL:=1
PKG_HOST_ONLY:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/rust/rust-host-build.mk

define Package/mtk_uartboot
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=MediaTek UART boot tool (host)
  DEPENDS:=$(RUST_ARCH_DEPENDS)
  URL:=https://github.com/981213/mtk_uartboot
endef

define Package/mtk_uartboot/description
  Host tool to load a BL2 and FIP into MediaTek SoCs via the BootROM UART download mode.
endef

$(eval $(call RustBinHostBuild))
$(eval $(call HostBuild))
$(eval $(call BuildPackage,mtk_uartboot))

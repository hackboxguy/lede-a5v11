include $(TOPDIR)/rules.mk

PKG_NAME:=AdDisp
PKG_VERSION:=0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/hackboxguy/brbox/tree/master/sources/lib/lib-display/tar.gz/v$(PKG_VERSION)?
#PKG_HASH:=0174111b028d84f18fb3716b22834a372a1f2575938f87e20e5cbd76747d0fdb

PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING.txt

PKG_MAINTAINER:=Albert David <albert dot david at gmail.com>

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/uclibc++.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/AdDisp
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=Common Library for accessing ssd_1306 oled display
  URL:=https://github.com/hackboxguy/brbox/tree/master/sources/lib/lib-display
  DEPENDS:=+libc +libstdcpp 
endef

define Package/AdDisp/description
  libAdDisp is used for accessing ssd_1306 oled display
endef
CMAKE_OPTIONS += -DCMAKE_CXX_COMPILER=mipsel-openwrt-linux-g++
define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/*.h $(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libAdDisp.so* $(1)/usr/lib/

	#$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	#$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libAdSttngs.pc $(1)/usr/lib/pkgconfig/
endef

define Package/AdDisp/install
	#$(INSTALL_DIR) $(1)/usr/include
	#$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/ArduiPi_OLED*.h $(1)/usr/include/
	
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libAdDisp.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,AdDisp))


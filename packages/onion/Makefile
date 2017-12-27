include $(TOPDIR)/rules.mk

PKG_NAME:=onion
PKG_VERSION:=0.8
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/davidmoreno/onion/tree/master/sources/tar.gz/v$(PKG_VERSION)?
#PKG_HASH:=0174111b028d84f18fb3716b22834a372a1f2575938f87e20e5cbd76747d0fdb


PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=COPYING.txt

PKG_MAINTAINER:=Albert David <albert dot david at gmail.com>

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/uclibc++.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/onion
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=open source http library for implementing http-api
  URL:=https://github.com/davidmoreno/onion/tree/v0.8
  DEPENDS:=+libc +libstdcpp 
endef

define Package/onion/description
  lib-onion is used for implementing http api.
endef
CMAKE_OPTIONS += -DCMAKE_CXX_COMPILER=mipsel-openwrt-linux-g++
CMAKE_OPTIONS += -DONION_USE_SSL=false 
CMAKE_OPTIONS += -DONION_USE_PAM=false 
CMAKE_OPTIONS += -DONION_USE_SYSTEMD=false 
CMAKE_OPTIONS += -DONION_USE_SQLITE3=false 
CMAKE_OPTIONS += -DONION_USE_GC=false 
CMAKE_OPTIONS += -DONION_USE_TESTS=false 
CMAKE_OPTIONS += -DONION_EXAMPLES=false 
CMAKE_OPTIONS += -DONION_USE_BINDINGS_CPP=true 
CMAKE_OPTIONS += -DONION_USE_JPEG=false 
CMAKE_OPTIONS += -DONION_USE_PNG=false

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/onion
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/onion/*.h* $(1)/usr/include/onion/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libonion.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libonioncpp.so* $(1)/usr/lib/

endef

define Package/onion/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libonion.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libonioncpp.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,onion))


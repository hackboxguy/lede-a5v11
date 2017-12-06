include $(TOPDIR)/rules.mk

PKG_NAME:=AdSttngs
PKG_VERSION:=0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/hackboxguy/brbox/tree/master/sources/lib/lib-settings/tar.gz/v$(PKG_VERSION)?
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

define Package/AdSttngs
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=Common Library for persistent settings access
  URL:=https://github.com/hackboxguy/brbox/tree/master/sources/lib/lib-settings
  DEPENDS:=+libc +libstdcpp 
endef

define Package/AdSttngs/description
  libAdSttngs is used for accessing persistent data stored as key/value pair.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/*.h* $(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libAdSttngs.so* $(1)/usr/lib/

	#$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	#$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libAdSttngs.pc $(1)/usr/lib/pkgconfig/
endef

define Package/AdSttngs/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libAdSttngs.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,AdSttngs))


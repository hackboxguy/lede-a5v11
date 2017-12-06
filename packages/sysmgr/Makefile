include $(TOPDIR)/rules.mk

PKG_NAME:=sysmgr
PKG_VERSION:=0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/hackboxguy/brbox/tree/master/sources/services/sysmgr/tar.gz/v$(PKG_VERSION)?

PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING.txt

PKG_MAINTAINER:=Albert David <albert dot david at gmail.com>

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/uclibc++.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/sysmgr
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=system manager service with json-rpc access
  URL:=https://github.com/hackboxguy/brbox/tree/master/sources/services/sysmgr
  DEPENDS:=+libc +libstdcpp +libAdSttngs +libAdCmn
endef

define Package/sysmgr/description
  sysmgr is used for accessing linux system properties of targer h/w.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/*.h* $(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/sysmgr* $(1)/usr/bin/

	#$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	#$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libAdSttngs.pc $(1)/usr/lib/pkgconfig/
endef

define Package/sysmgr/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/sysmgr* $(1)/usr/bin/
endef

$(eval $(call BuildPackage,sysmgr))


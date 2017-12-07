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
  DEPENDS:=+libc +libstdcpp +AdSttngs +AdCmn +libjson-c
endef

define Package/sysmgr/description
  sysmgr is used for accessing linux system properties of targer h/w.
endef
CMAKE_OPTIONS += -DAUTO_SVN_VERSION=OFF
CMAKE_OPTIONS += -DINSTALL_MY_HEADERS=OFF
CMAKE_OPTIONS += -DSTARTNUM=71
CMAKE_OPTIONS += -DCMAKE_CXX_COMPILER=mipsel-openwrt-linux-g++

define Package/sysmgr/install #Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/sysmgr* $(1)/usr/bin/

	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_CONF) $(PKG_INSTALL_DIR)/usr/etc/init.d/*StartupScr $(1)/etc/init.d/
endef

#define Package/sysmgr/install
#	$(INSTALL_DIR) $(1)/usr/bin
#	$(CP) $(PKG_INSTALL_DIR)/usr/bin/sysmgr* $(1)/usr/bin/
#endef

$(eval $(call BuildPackage,sysmgr))


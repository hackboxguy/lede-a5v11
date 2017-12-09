include $(TOPDIR)/rules.mk

PKG_NAME:=dispsrv
PKG_VERSION:=0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/hackboxguy/brbox/tree/master/sources/services/dispsrv/tar.gz/v$(PKG_VERSION)?

PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING.txt

PKG_MAINTAINER:=Albert David <albert dot david at gmail.com>

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/uclibc++.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/dispsrv
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=various display hw access service with json-rpc access
  URL:=https://github.com/hackboxguy/brbox/tree/master/sources/services/dispsrv
  DEPENDS:=+libc +libstdcpp +AdSttngs +AdCmn +AdDisp +libjson-c
endef

define Package/dispsrv/description
  dispsrv is used for accessing various display h/w including ssd1302 and dot-matrix.
endef
CMAKE_OPTIONS += -DAUTO_SVN_VERSION=OFF
CMAKE_OPTIONS += -DINSTALL_MY_HEADERS=OFF
CMAKE_OPTIONS += -DSTARTNUM=72
CMAKE_OPTIONS += -DCMAKE_CXX_COMPILER=mipsel-openwrt-linux-g++

define Package/dispsrv/install 
	$(INSTALL_DIR) $(1)/opt/fmw/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/disp* $(1)/opt/fmw/bin/

	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/etc/init.d/WrtDispsrvStartupScr $(1)/etc/init.d/
endef


$(eval $(call BuildPackage,dispsrv))


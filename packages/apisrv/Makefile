include $(TOPDIR)/rules.mk

PKG_NAME:=apisrv
PKG_VERSION:=0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/hackboxguy/brbox/tree/master/sources/services/apisrv/tar.gz/v$(PKG_VERSION)?

PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING.txt

PKG_MAINTAINER:=Albert David <albert dot david at gmail.com>

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/uclibc++.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/apisrv
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=http-api service with json-rpc access
  URL:=https://github.com/hackboxguy/brbox/tree/master/sources/services/apisrv
  DEPENDS:=+libc +libstdcpp +AdSttngs +AdCmn +libjson-c +onion
endef

define Package/apisrv/description
  apisrv acts as a proxy between http-service and the rpc's, it maps the http to json-rpc calls and vice-versa.
endef
CMAKE_OPTIONS += -DAUTO_SVN_VERSION=OFF
CMAKE_OPTIONS += -DINSTALL_MY_HEADERS=OFF
CMAKE_OPTIONS += -DSTARTNUM=74
CMAKE_OPTIONS += -DCMAKE_CXX_COMPILER=mipsel-openwrt-linux-g++

define Package/apisrv/install
	$(INSTALL_DIR) $(1)/opt/fmw/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/api* $(1)/opt/fmw/bin/

	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/etc/init.d/WrtApisrvStartupScr $(1)/etc/init.d/
endef



$(eval $(call BuildPackage,apisrv))


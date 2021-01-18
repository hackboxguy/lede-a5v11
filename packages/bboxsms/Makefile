include $(TOPDIR)/rules.mk

PKG_NAME:=bboxsms
PKG_VERSION:=0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/hackboxguy/brbox/tree/master/sources/services/bboxsms/tar.gz/v$(PKG_VERSION)?

PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING.txt

PKG_MAINTAINER:=Albert David <albert dot david at gmail.com>

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/uclibc++.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/bboxsms
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=sms access service
  URL:=https://github.com/hackboxguy/brbox/tree/master/sources/services/bboxsms
  DEPENDS:=+libc +libstdcpp +AdSttngs +AdCmn +libjson-c +gammu
endef

define Package/bboxsms/description
  bboxsms provides sms read/write and data call access using usb 3g dongles
endef
CMAKE_OPTIONS += -DAUTO_SVN_VERSION=OFF
CMAKE_OPTIONS += -DINSTALL_CLIENT=ON
CMAKE_OPTIONS += -DINSTALL_MY_HEADERS=OFF
CMAKE_OPTIONS += -DSTARTNUM=73
CMAKE_OPTIONS += -DCMAKE_CXX_COMPILER=mipsel-openwrt-linux-g++

define Package/bboxsms/install
	$(INSTALL_DIR) $(1)/opt/fmw/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/bboxsms* $(1)/opt/fmw/bin/

	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/etc/init.d/WrtBboxsmsStartupScr $(1)/etc/init.d/
endef



$(eval $(call BuildPackage,bboxsms))


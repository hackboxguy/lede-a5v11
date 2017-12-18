include $(TOPDIR)/rules.mk

PKG_NAME:=libstrophe
PKG_VERSION:=0.9.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://github.com/strophe/libstrophe/releases/download/0.9.1/libstrophe-0.9.1.tar.bz2

PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING.txt

PKG_MAINTAINER:=Albert David <albert dot david at gmail.com>

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1
#CMAKE_INSTALL:=1

PKG_FIXUP:=autoreconf
include $(INCLUDE_DIR)/package.mk

#include $(INCLUDE_DIR)/uclibc++.mk
#include $(INCLUDE_DIR)/package.mk
#include $(INCLUDE_DIR)/cmake.mk

define Package/libstrophe
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=C xmpp client library.
  URL:=http://strophe.im/libstrophe/
  DEPENDS:=+libc 
	#+zlib +libopenssl
  #+libopenssl 
endef

define Package/libstrophe/description
  libstrophe provides library functionality for implmenting xmpp client in c.
endef

#CONFIGURE_ARGS += \
#		--with-tests="no" \
#		--with-examples="no" \
#		--with-openssl="$(STAGING_DIR)/usr"
define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/libstrophe
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/libstrophe/*.h* $(1)/usr/include/libstrophe/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libstrophe.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libstrophe.pc $(1)/usr/lib/pkgconfig/

endef

define Package/libstrophe/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libstrophe.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libstrophe))


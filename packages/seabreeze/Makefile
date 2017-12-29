include $(TOPDIR)/rules.mk

PKG_NAME:=seabreeze
PKG_VERSION:=3.0.11
PKG_RELEASE:=11

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://downloads.sourceforge.net/project/seabreeze/SeaBreeze/source/seabreeze-3.0.11.tar.gz

PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING.txt

PKG_MAINTAINER:=Albert David <albert dot david at gmail.com>

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1
#CMAKE_INSTALL:=1

#PKG_FIXUP:=autoreconf
#include $(INCLUDE_DIR)/package.mk

#include $(INCLUDE_DIR)/uclibc++.mk
include $(INCLUDE_DIR)/package.mk
#include $(INCLUDE_DIR)/cmake.mk

define Package/seabreeze
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=c library for accessing ocean-optics spectrometer.
  URL:=https://oceanoptics.com/product/seabreeze/
  DEPENDS:=+libc +libstdcpp +libusb-1.0
endef

define Package/seabreeze/description
  seabreeze provides library functionality for accessing ocean-optics spectrometers.
endef

#CONFIGURE_ARGS += \
#		--with-tests="no" \
#		--with-examples="no" \
#		--with-openssl="$(STAGING_DIR)/usr"
#MAKE_FLAGS += \
        CFLAGS="$(TARGET_CFLAGS)" \
        LDFLAGS="$(TARGET_LDFLAGS)"
#define Build/Configure
 # $(call Build/Configure/Default,--with-linux-headers=$(LINUX_DIR))
#endef
define Build/Compile
        $(MAKE) -C $(PKG_BUILD_DIR) \
                CC="$(TARGET_CC)" \
                LD="$(TARGET_CC)" \
                LDFLAGS="$(TARGET_LDFLAGS)" \
                all
	$(MAKE) -C $(PKG_BUILD_DIR) \
		PREFIX="$(PKG_INSTALL_DIR)/usr" \
		install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/seabreeze
	$(CP) -r $(PKG_INSTALL_DIR)/usr/include/seabreeze $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libseabreeze.so* $(1)/usr/lib/
endef

define Package/seabreeze/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libseabreeze.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,seabreeze))


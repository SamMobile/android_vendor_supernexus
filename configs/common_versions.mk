# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JZO54K BUILD_ID=JZO54K BUILD_VERSION_TAGS=release-keys BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d)
SUPERNEXUS_BUILD_VERSION = BUILD4

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sn.version=SuperNexus-$(TARGET_PRODUCT)-$(SUPERNEXUS_BUILD_VERSION)-$(DATE)

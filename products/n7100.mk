# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/n7100/full_n7100.mk)

# Inherit common product files.
$(call inherit-product, vendor/supernexus/configs/common.mk)

# Inherit GSM files.
$(call inherit-product, vendor/supernexus/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := N7100
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := n7100
PRODUCT_MODEL := GT-N7100
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t03gxx TARGET_DEVICE=t03g BUILD_FINGERPRINT="samsung/t03gxx/t03g:4.1.1/JRO03C/N7100XXALJ3:user/release-keys" PRIVATE_BUILD_DESC="t03gxx-user 4.1.1 JRO03C N7100XXALJ3 release-keys"

# Inherit common build.prop overrides
-include vendor/supernexus/configs/common_versions.mk

# Copy GalaxyS3 specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/supernexus/prebuilt/bootanimations/BOOTANIMATION-720x1280.zip:system/media/bootanimation.zip 

# Inherit drm blobs
-include vendor/supernexus/configs/common_drm_phone.mk

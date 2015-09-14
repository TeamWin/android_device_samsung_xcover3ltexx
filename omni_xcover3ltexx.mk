# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := xcover3ltexx

PRODUCT_COPY_FILES += device/samsung/xcover3ltexx/init.recovery.usb.rc:root/init.recovery.usb.rc
PRODUCT_COPY_FILES += device/samsung/xcover3ltexx/poweroff.sh:recovery/root/sbin/poweroff.sh

# Inherit device configuration
$(call inherit-product, device/samsung/xcover3ltexx/device_xcover3ltexx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xcover3ltexx
PRODUCT_NAME := omni_xcover3ltexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := xcover3ltexx
PRODUCT_MANUFACTURER := samsung

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := xcover3ltexx

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/xcover3ltexx/device_xcover3ltexx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xcover3ltexx
PRODUCT_NAME := cm_xcover3ltexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := xcover3ltexx
PRODUCT_MANUFACTURER := samsung

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/xcover3ltexx/xcover3ltexx-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/xcover3ltexx/overlay

LOCAL_PATH := device/samsung/xcover3ltexx
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += device/samsung/xcover3ltexx/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc
PRODUCT_COPY_FILES += device/samsung/xcover3ltexx/poweroff.sh:recovery/root/sbin/poweroff.sh

DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \
    persist.sys.usb.config=mtp,adb 

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_xcover3ltexx
PRODUCT_DEVICE := xcover3ltexx

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/faea/msm8x25q_n451_f1/msm8x25q_n451_f1-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/faea/msm8x25q_n451_f1/overlay

LOCAL_PATH := device/faea/msm8x25q_n451_f1
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_msm8x25q_n451_f1
PRODUCT_DEVICE := msm8x25q_n451_f1

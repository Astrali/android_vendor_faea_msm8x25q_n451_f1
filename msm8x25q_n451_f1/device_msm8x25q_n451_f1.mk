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
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/root/charger:recovery/root/charger \
    $(LOCAL_PATH)/root/fstab.msm7627a:recovery/root/fstab.msm7627a \
    $(LOCAL_PATH)/root/fstab.nand.msm7627a:recovery/root/fstab.nand.msm7627a \
    $(LOCAL_PATH)/root/fstab.qcom:recovery/root/fstab.qcom \
    $(LOCAL_PATH)/root/init.qcom.class_core.sh:recovery/root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/root/init.qcom.class_main.sh:recovery/root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/root/init.qcom.ril.path.sh:recovery/root/init.qcom.ril.path.sh \
    $(LOCAL_PATH)/root/init.qcom.sh:recovery/root/init.qcom.sh \
    $(LOCAL_PATH)/root/init.qcom.unicorn-dpi.sh:recovery/root/init.qcom.unicorn-dpi.sh \
    $(LOCAL_PATH)/root/init.qcom.usb.sh:recovery/root/init.qcom.usb.sh \
    $(LOCAL_PATH)/root/nv_set:recovery/root/nv_set \
    $(LOCAL_PATH)/root/rmt_storage_recovery:recovery/root/rmt_storage_recovery


$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_msm8x25q_n451_f1
PRODUCT_DEVICE := msm8x25q_n451_f1

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := msm8x25q_n451_f1

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/faea/msm8x25q_n451_f1/device_msm8x25q_n451_f1.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := msm8x25q_n451_f1
PRODUCT_NAME := cm_msm8x25q_n451_f1
PRODUCT_BRAND := faea
PRODUCT_MODEL := msm8x25q_n451_f1
PRODUCT_MANUFACTURER := faea

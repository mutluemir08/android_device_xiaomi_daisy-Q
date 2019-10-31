# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from aosp_daisy device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := aosp_daisy
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_aosp_daisy
PRODUCT_MODEL := Mi A2 Lite

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := aosp_daisy
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="tissot-user 9 PKQ1.180917.001 V10.0.13.0.PDHMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := xiaomi/tissot/tissot_sprout:9/PKQ1.180917.001/V10.0.13.0.PDHMIXM:user/release-keys

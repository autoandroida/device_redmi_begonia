# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from begonia device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := redmi
PRODUCT_DEVICE := begonia
PRODUCT_MANUFACTURER := redmi
PRODUCT_NAME := lineage_begonia
PRODUCT_MODEL := Redmi Note 8 Pro

PRODUCT_GMS_CLIENTID_BASE := android-redmi
TARGET_VENDOR := redmi
TARGET_VENDOR_PRODUCT_NAME := begonia
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="begonia-user 10 QP1A.190711.020 V12.0.8.0.QGGMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/begonia/begonia:10/QP1A.190711.020/V12.0.8.0.QGGMIXM:user/release-keys

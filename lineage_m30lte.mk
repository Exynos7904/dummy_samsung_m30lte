# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from m30lte device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := m30lte
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_m30lte
PRODUCT_MODEL := SM-M305F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := m30lte
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="m30ltedd-user 10 QP1A.190711.020 M305FDDS7CTL2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/m30ltedd/m30lte:10/QP1A.190711.020/M305FDDS7CTL2:user/release-keys

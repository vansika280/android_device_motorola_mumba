#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mumba device
$(call inherit-product, device/motorola/mumba/device.mk)

# Inherit some common penguin stuff.
$(call inherit-product, vendor/penguin/target/product/penguin-target.mk)

PRODUCT_NAME := penguin_mumba
PRODUCT_DEVICE := mumba
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := TODO_MODEL_NAME

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Boot animation (matches the 1080x2400 panel set in device.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Build fingerprint: fill in from the stock build.prop (ro.build.fingerprint)
# and the matching ro.build.description, then uncomment.
# BUILD_FINGERPRINT := motorola/mumba_g/mumba:XX/XXXXXXX/XXXXX:user/release-keys
# PRODUCT_BUILD_PROP_OVERRIDES += \
#     BuildDesc="mumba_g-user XX XXXXXXX XXXXX release-keys" \
#     BuildFingerprint=$(BUILD_FINGERPRINT)

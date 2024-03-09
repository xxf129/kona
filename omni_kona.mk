#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from kona device
$(call inherit-product, device/qualcomm/kona/device.mk)

PRODUCT_DEVICE := kona
PRODUCT_NAME := omni_kona
PRODUCT_BRAND := qti
PRODUCT_MODEL := Kona for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="kona-user 11 RKQ1.211019.001 1658766270543 release-keys"

BUILD_FINGERPRINT := qti/kona/kona:11/RKQ1.211019.001/1658766270543:user/release-keys

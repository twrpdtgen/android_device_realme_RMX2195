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

# Inherit from RMX2195 device
$(call inherit-product, device/realme/RMX2195/device.mk)

PRODUCT_DEVICE := RMX2195
PRODUCT_NAME := omni_RMX2195
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme C15 Qualcomm
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fox_RMX2195-eng 99.87.36 RQ1A.210205.004 eng.runner.20241126.173246 test-keys"

BUILD_FINGERPRINT := realme/fox_RMX2195/RMX2195:99.87.36/RQ1A.210205.004/runner11261730:eng/test-keys

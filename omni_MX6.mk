#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from MX6 device
$(call inherit-product, device/meizu/MX6/device.mk)

PRODUCT_DEVICE := MX6
PRODUCT_NAME := omni_MX6
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := MX6
PRODUCT_MANUFACTURER := meizu

PRODUCT_GMS_CLIENTID_BASE := android-meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="meizu_MX6-user 7.1.1 NMF26O 1594346885 release-keys"

BUILD_FINGERPRINT := Meizu/full_mz6797_6m_n/mz6797_6m_n:7.1.1/NMF26O/1594346885:user/release-keys

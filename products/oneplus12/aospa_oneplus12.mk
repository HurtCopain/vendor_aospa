#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_oneplus12, $(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from waffle device
$(call inherit-product, device/oneplus/oneplus12/device.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/oneplus/oneplus12/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_NAME := aospa_oneplus12
PRODUCT_DEVICE := oneplus12
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2581

PRODUCT_SYSTEM_NAME := OnePlus12
PRODUCT_SYSTEM_DEVICE := OnePlus12

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1440
scr_resolution := 1440
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

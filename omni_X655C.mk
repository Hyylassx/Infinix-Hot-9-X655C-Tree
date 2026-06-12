#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/infinix/X655C

# Inherit from core product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, device/infinix/X655C/device.mk)

PRODUCT_RELEASE_NAME := Infinix Hot 9

# Device Identities
PRODUCT_DEVICE := X655C
PRODUCT_NAME := omni_X655C
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Hot 9
PRODUCT_MANUFACTURER := Infinix
PRODUCT_BOARD := Infinix-X655C
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_TARGET_VNDK_VERSION := 29

# Platform Details
PRODUCT_PLATFORM := mt6765

# Dynamic Partition Configuration
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_ENFORCE_VINTF_MANIFEST := false

# Base Client ID / Fingerprint
PRODUCT_GMS_CLIENTID_BASE := android-infinix

# 1. Executables
PRODUCT_PACKAGES += \
    servicemanager \
    hwservicemanager \
    vndservicemanager \
    vold \
    vold_prepare_subdirs \
    keystore \
    keystore2 \
    gatekeeperd \
    wait_for_keymaster

#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/infinix/X655C

# Inherit from core product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Telephony support
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, vendor/twrp/config/common.mk)

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

# Base Client ID / Fingerprint
PRODUCT_GMS_CLIENTID_BASE := android-infinix

# 2. Copy Executables
PRODUCT_PACKAGES += \
    teei_daemon \
    bp_kmsetkey_ca

# 3. Copy Hardware Binaries & Firmware
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/dtb.img:dtb.img \
    $(DEVICE_PATH)/recovery/root/init.recovery.mt6765.rc:recovery/root/init.recovery.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.microtrust.rc:recovery/root/init.recovery.microtrust.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc \
    $(DEVICE_PATH)/recovery/root/ueventd.mt6765.rc:recovery/root/ueventd.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_fw.bin:vendor/firmware/novatek_ts_fw.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_mp.bin:vendor/firmware/novatek_ts_mp.bin \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/android.hardware.keymaster@4.0-service.beanpod:recovery/root/vendor/bin/hw/android.hardware.keymaster@4.0-service.beanpod \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service:recovery/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/vendor.microtrust.hardware.capi@2.0-service:recovery/root/vendor/bin/hw/vendor.microtrust.hardware.capi@2.0-service \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-service:recovery/root/vendor/bin/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-service

# 4. Copy Libraries (LibIon & LibGatekeeper & Keymaster)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libion.so:recovery/root/vendor/lib64/libion.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libion.so:recovery/root/vendor/lib/libion.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libion_mtk.so:recovery/root/vendor/lib64/libion_mtk.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libion_mtk.so:recovery/root/vendor/lib/libion_mtk.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libgatekeeper.so:recovery/root/system/lib64/libgatekeeper.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libgatekeeper.so:recovery/root/system/lib/libgatekeeper.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkeymaster4.so:recovery/root/vendor/lib64/libkeymaster4.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkeymaster4support.so:recovery/root/vendor/lib64/libkeymaster4support.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libkeymaster4support.so:recovery/root/vendor/lib/libkeymaster4support.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libTEECommon.so:recovery/root/vendor/lib64/libTEECommon.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libTEECommon.so:recovery/root/vendor/lib/libTEECommon.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/libSoftGatekeeper.so:recovery/root/vendor/lib64/hw/libSoftGatekeeper.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/libSoftGatekeeper.so:recovery/root/vendor/lib/hw/libSoftGatekeeper.so

# 5. VINTF & Security Props
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/etc/vintf/manifest.xml:recovery/root/vendor/etc/vintf/manifest.xml \
    $(DEVICE_PATH)/recovery/root/vendor/etc/vintf/compatibility_matrix.xml:recovery/root/vendor/etc/vintf/compatibility_matrix.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.state=encrypted \
    ro.crypto.type=file \
    ro.vendor.build.security_patch=2020-03-05

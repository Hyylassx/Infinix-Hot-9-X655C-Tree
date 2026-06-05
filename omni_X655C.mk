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
    logd \
    liblog \
    logcat

# 2. Config & Prebuilt Init Scripts (Koreksi Jalur Kanan: recovery/root/ dibuang)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/dtb.img:dtb.img \
    $(DEVICE_PATH)/recovery/root/init.recovery.mt6765.rc:root/init.recovery.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.microtrust.rc:root/init.recovery.microtrust.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.usb.rc:root/init.recovery.usb.rc \
    $(DEVICE_PATH)/recovery/root/ueventd.mt6765.rc:root/ueventd.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/vndservice_contexts:root/vndservice_contexts \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_fw.bin:vendor/firmware/novatek_ts_fw.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_mp.bin:vendor/firmware/novatek_ts_mp.bin

# ============================================================
# KEYMASTER / GATEKEEPER / MICROTRUST BINARIES
# ============================================================
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/bin/teei_daemon:vendor/bin/teei_daemon \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/android.hardware.keymaster@4.0-service.beanpod:vendor/bin/hw/android.hardware.keymaster@4.0-service.beanpod \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/vendor.microtrust.hardware.capi@2.0-service:vendor/bin/hw/vendor.microtrust.hardware.capi@2.0-service \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-service:vendor/bin/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-service

# ============================================================
# VENDOR LIBRARIES (32 BIT)
# ============================================================
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libcrypto-mdapp.so:vendor/lib/libcrypto-mdapp.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libimsg_log.so:vendor/lib/libimsg_log.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libion_mtk.so:vendor/lib/libion_mtk.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libmtee.so:vendor/lib/libmtee.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libTEECommon.so:vendor/lib/libTEECommon.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/vendor.microtrust.hardware.capi@2.0.so:vendor/lib/vendor.microtrust.hardware.capi@2.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.0.so:vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.1.so:vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.1.so

# ============================================================
# VENDOR LIBRARIES (64 BIT)
# ============================================================
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libcrypto-mdapp.so:vendor/lib64/libcrypto-mdapp.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libimsg_log.so:vendor/lib64/libimsg_log.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libion_mtk.so:vendor/lib64/libion_mtk.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libmtee.so:vendor/lib64/libmtee.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libTEECommon.so:vendor/lib64/libTEECommon.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/vendor.microtrust.hardware.capi@2.0.so:vendor/lib64/vendor.microtrust.hardware.capi@2.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.0.so:vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.1.so:vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.1.so

# ============================================================
# HARDWARE MODULES (32 BIT)
# ============================================================
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/gatekeeper.mt6765.so:vendor/lib/hw/gatekeeper.mt6765.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/libSoftGatekeeper.so:vendor/lib/hw/libSoftGatekeeper.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so:vendor/lib/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so

# ============================================================
# HARDWARE MODULES (64 BIT)
# ============================================================
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/gatekeeper.mt6765.so:vendor/lib64/hw/gatekeeper.mt6765.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/libSoftGatekeeper.so:vendor/lib64/hw/libSoftGatekeeper.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so:vendor/lib64/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so

# ============================================================
# MICROTRUST TA FILES
# ============================================================
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/7778c03fc30c4dd0a319ea29643d4d4b.ta:vendor/thh/ta/7778c03fc30c4dd0a319ea29643d4d4b.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/7778c03fc30c4dd0a319ea29643d4dc0.ta:vendor/thh/ta/7778c03fc30c4dd0a319ea29643d4dc0.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/93feffccd8ca11e796c7c7a21acb4932.ta:vendor/thh/ta/93feffccd8ca11e796c7c7a21acb4932.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/c09c9c5daa504b78b0e46eda61556c3a.ta:vendor/thh/ta/c09c9c5daa504b78b0e46eda61556c3a.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/c1882f2d885e4e13a8c8e2622461b2fa.ta:vendor/thh/ta/c1882f2d885e4e13a8c8e2622461b2fa.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/d91f322ad5a441d5955110eda3272fc0.ta:vendor/thh/ta/d91f322ad5a441d5955110eda3272fc0.ta

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2020-03-05

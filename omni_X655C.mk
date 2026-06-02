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

# Mengaktifkan Pustaka Prebuilt Executable (Sinkronisasi dengan Android.mk lokal)
PRODUCT_PACKAGES += \
    teei_daemon \
    bp_kmsetkey_ca

# 1. Salin Seluruh File Konfigurasi Dasar, Touchscreen Firmware, dan Script Init Ramdisk
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/dtb.img:dtb.img \
    $(DEVICE_PATH)/recovery/root/init.recovery.mt6765.rc:recovery/root/init.recovery.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.microtrust.rc:recovery/root/init.recovery.microtrust.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc \
    $(DEVICE_PATH)/recovery/root/ueventd.rc:recovery/root/ueventd.rc \
    $(DEVICE_PATH)/recovery/root/ueventd.mt6765.rc:recovery/root/ueventd.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_fw.bin:vendor/firmware/novatek_ts_fw.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_mp.bin:vendor/firmware/novatek_ts_mp.bin

# 2. Copy Hardware Binaries & Daemon Services
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/android.hardware.keymaster@4.0-service.beanpod:recovery/root/vendor/bin/hw/android.hardware.keymaster@4.0-service.beanpod \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service:recovery/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/vendor.microtrust.hardware.capi@2.0-service:recovery/root/vendor/bin/hw/vendor.microtrust.hardware.capi@2.0-service \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-service:recovery/root/vendor/bin/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-service

# 3. Copy Shared Linker Security Libraries (System & VNDK-29 Namespace)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/lib64/libgatekeeper.so:recovery/root/system/lib64/libgatekeeper.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libgatekeeper.so:recovery/root/system/lib/libgatekeeper.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libteeservice_client.trustonic.so:recovery/root/system/lib64/libteeservice_client.trustonic.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libteeservice_client.trustonic.so:recovery/root/system/lib/libteeservice_client.trustonic.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/vndk-29/libsoftkeymasterdevice.so:recovery/root/system/lib64/vndk-29/libsoftkeymasterdevice.so \
    $(DEVICE_PATH)/recovery/root/system/lib/vndk-29/libsoftkeymasterdevice.so:recovery/root/system/lib/vndk-29/libsoftkeymasterdevice.so

# 4. Copy Vendor Core TEE & Attestation Framework Libraries (64-bit and 32-bit)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/vendor.microtrust.hardware.capi@2.0.so:recovery/root/vendor/lib64/vendor.microtrust.hardware.capi@2.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/vendor.microtrust.hardware.capi@2.0.so:recovery/root/vendor/lib/vendor.microtrust.hardware.capi@2.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libimsg_log.so:recovery/root/vendor/lib64/libimsg_log.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libimsg_log.so:recovery/root/vendor/lib/libimsg_log.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libTEECommon.so:recovery/root/vendor/lib64/libTEECommon.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libTEECommon.so:recovery/root/vendor/lib/libTEECommon.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkeymaster4.so:recovery/root/vendor/lib64/libkeymaster4.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkeymaster4support.so:recovery/root/vendor/lib64/libkeymaster4support.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libkeymaster4support.so:recovery/root/vendor/lib/libkeymaster4support.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.0.so:recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.0.so:recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.1.so:recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.1.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.1.so:recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.1.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl.so:recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/android.hardware.gatekeeper@1.0-impl.so:recovery/root/vendor/lib/hw/android.hardware.gatekeeper@1.0-impl.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/gatekeeper.mt6765.so:recovery/root/vendor/lib64/hw/gatekeeper.mt6765.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/gatekeeper.mt6765.so:recovery/root/vendor/lib/hw/gatekeeper.mt6765.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/libSoftGatekeeper.so:recovery/root/vendor/lib64/hw/libSoftGatekeeper.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/libSoftGatekeeper.so:recovery/root/vendor/lib/hw/libSoftGatekeeper.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so:recovery/root/vendor/lib64/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so:recovery/root/vendor/lib/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so

# 5. Copy VINTF Manifests & Compatibility Layout Matrix
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/etc/vintf/manifest.xml:recovery/root/vendor/etc/vintf/manifest.xml \
    $(DEVICE_PATH)/recovery/root/vendor/etc/vintf/compatibility_matrix.xml:recovery/root/vendor/etc/vintf/compatibility_matrix.xml

# Pengaturan Properti Tambahan & Penyelarasan Security Patch
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.state=encrypted \
    ro.crypto.type=file \
    ro.vendor.build.security_patch=2020-03-05

#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/infinix/X655C

ALLOW_MISSING_DEPENDENCIES := true
TW_ALLOW_MISSING_PROP := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Properties
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# VINTF Manifest and Compatibility Matrix
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/recovery/root/vendor/etc/vintf/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/recovery/root/vendor/etc/vintf/compatibility_matrix.xml

# Platform / Bootloader
TARGET_BOARD_PLATFORM := mt6765
TARGET_BOOTLOADER_BOARD_NAME := CY-X655C-H6211-

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_SCREEN_DENSITY := 320
TARGET_OTA_ASSERT_DEVICE := X655C
TARGET_USES_MKE2FS := true

BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true
BOARD_PROPERTY_OVERRIDES_SPLIT_PRODUCT := true
BOARD_PROPERTY_OVERRIDES_SPLIT_SEPOLICY := true

# Kernel Configuration
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive androidboot.boot_devices=bootdevice androidboot.hardware=mt6765 androidboot.logical_partitions=1
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x11a88000
BOARD_KERNEL_TAGS_OFFSET := 0x07808000
BOARD_KERNEL_PAGESIZE := 2048

# Prebuilt Images
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBIMAGE := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# Pack Boot Image Args
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# File System & Sizes
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 40894464
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800

# Sub-partition size ceilings (Verified safe under physical layout caps)
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472   # 3.0 GB ceiling
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 629145600    # 600 MB ceiling
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 524288000   # 500 MB ceiling

BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_USERDATAIMAGE_PARTITION_SIZE := 119291231232
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product

# Dynamic / Super Partition Configuration (Synchronized with Device Tree Layout)
BOARD_SUPER_PARTITION_SIZE := 4479516672
BOARD_SUPER_PARTITION_GROUPS := infinix_dynamic_partitions
BOARD_INFINIX_DYNAMIC_PARTITIONS_SIZE := 4475322368
BOARD_INFINIX_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product
BOARD_USES_DYNAMIC_PARTITIONS := true

# Verified Boot (AVB) Config
BOARD_AVB_ENABLE := false
BUILD_BROKEN_VNDK_VERSION := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# TWRP Graphics & Theme
TW_INCLUDE_F2FS := true
TW_CUSTOM_CONFIGFS := true
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := false
TW_ALLOW_MISSING_GRAPHICS := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 15
TW_MAX_BRIGHTNESS := 225
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_EXCLUDE_DEFAULT_USB_INIT := true

# TWRP Exclusion & Feature Flags
TW_INPUT_BLACKLIST := "hct_battery"
TW_EXCLUDE_TWRP_APP := true
TW_DEFAULT_LANGUAGE := en
TW_USE_TOOLBOX := true
TW_NO_SCREEN_TIMEOUT := true
TW_INCLUDE_FASTBOOTD := true
TW_SUPPORT_EMBEDDED_VINTF := true
TWRP_INCLUDE_LOGCAT := true
TW_EXTRA_LANGUAGES := false
TWRP_EVENT_LOGGING := true
RECOVERY_SDCARD_ON_DATA := true

# ============================================================
# TWRP DECRYPTION - Native Crypto with TEEI Symlink
# ============================================================

# Enable native TWRP crypto (will use /dev/keymaster symlink)
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true

# DO NOT USE VOLD - it's broken on this device!
# TW_CRYPTO_USE_SYSTEM_VOLD := true      ← REMOVE
# TW_CRYPTO_SYSTEM_VOLD_DEBUG := true    ← REMOVE

# Keep these
TW_SKIP_METADATA_ENCRYPTION := true
TW_SELINUX_RELEASE_PERMISSIVE := true
BOARD_USES_METADATA_PARTITION := true
TW_FORCE_KEY_DIRECTORY := "/data/unencrypted/key"

# Remove these - not needed with symlink approach
# TW_USE_FSCRYPT_POLICY := 1             ← REMOVE

# TEEI services only (NO vold!)
TARGET_RECOVERY_DEVICE_MODULES += \
    teei_daemon \
    teei_capi_2_0 \
    android.hardware.keymaster@4.0-service.beanpod \
    android.hardware.gatekeeper@1.0-service \
    keymaster-attestation

# Security Patches & Version Override (Aligned for Android 10 Property Space)
PLATFORM_SECURITY_PATCH := 2020-03-05
VENDOR_SECURITY_PATCH := 2020-03-05
PLATFORM_VERSION := 10

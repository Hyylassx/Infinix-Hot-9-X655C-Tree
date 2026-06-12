PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/dtb.img:dtb.img \
    $(DEVICE_PATH)/recovery/root/ueventd.mt6765.rc:recovery/root/ueventd.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc \
    $(DEVICE_PATH)/recovery/root/system/etc/twrp.flags:recovery/root/system/etc/twrp.flags \
    $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab:recovery/root/system/etc/recovery.fstab \
    $(DEVICE_PATH)/recovery/root/init.recovery.mt6765.rc:recovery/root/init.recovery.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab:recovery/root/system/etc/recovery.fstab \
    $(DEVICE_PATH)/recovery/root/init.recovery.microtrust.rc:recovery/root/init.recovery.microtrust.rc \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_fw.bin:recovery/root/vendor/firmware/novatek_ts_fw.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_mp.bin:recovery/root/vendor/firmware/novatek_ts_mp.bin

# RECOVERY SYSTEM LIBRARIES 32 Bit
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/lib/libion.so:root/system/lib/libion.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libhwbinder.so:root/system/lib/libhwbinder.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libhidlmemory.so:root/system/lib/libhidlmemory.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libgatekeeper.so:root/system/lib/libgatekeeper.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libkeymaster_messages.so:root/system/lib/libkeymaster_messages.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libkeymaster_portable.so:root/system/lib/libkeymaster_portable.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libsoftkeymasterdevice.so:root/system/lib/libsoftkeymasterdevice.so \
    $(DEVICE_PATH)/recovery/root/system/lib/android.hidl.memory@1.0.so:root/system/lib/android.hidl.memory@1.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib/android.hardware.boot@1.0.so:root/system/lib/android.hardware.boot@1.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib/android.hidl.allocator@1.0.so:root/system/lib/android.hidl.allocator@1.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib/android.hidl.memory.token@1.0.so:root/system/lib/android.hidl.memory.token@1.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib/android.hardware.keymaster@3.0.so:root/system/lib/android.hardware.keymaster@3.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib/android.hardware.keymaster@4.0.so:root/system/lib/android.hardware.keymaster@4.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libteeservice_client.trustonic.so:root/system/lib/libteeservice_client.trustonic.so \
    $(DEVICE_PATH)/recovery/root/system/lib/android.hardware.gatekeeper@1.0.so:root/system/lib/android.hardware.gatekeeper@1.0.so

# RECOVERY SYSTEM LIBRARIES 64 Bit
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/lib64/libion.so:root/system/lib64/libion.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libhwbinder.so:root/system/lib64/libhwbinder.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libhidlmemory.so:root/system/lib64/libhidlmemory.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libgatekeeper.so:root/system/lib64/libgatekeeper.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libkeymaster_messages.so:root/system/lib64/libkeymaster_messages.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libkeymaster_portable.so:root/system/lib64/libkeymaster_portable.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libsoftkeymasterdevice.so:root/system/lib64/libsoftkeymasterdevice.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/android.hidl.memory@1.0.so:root/system/lib64/android.hidl.memory@1.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/android.hardware.boot@1.0.so:root/system/lib64/android.hardware.boot@1.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/android.hidl.allocator@1.0.so:root/system/lib64/android.hidl.allocator@1.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/android.hidl.memory.token@1.0.so:root/system/lib64/android.hidl.memory.token@1.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/android.hardware.keymaster@3.0.so:root/system/lib64/android.hardware.keymaster@3.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/android.hardware.keymaster@4.0.so:root/system/lib64/android.hardware.keymaster@4.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libteeservice_client.trustonic.so:root/system/lib64/libteeservice_client.trustonic.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/android.hardware.gatekeeper@1.0.so:root/system/lib64/android.hardware.gatekeeper@1.0.so

# System Bin Copies Library
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/bin/vold:root/system/bin/vold \
    $(DEVICE_PATH)/recovery/root/system/bin/keystore:root/system/bin/keystore \
    $(DEVICE_PATH)/recovery/root/system/bin/vndservice:root/system/bin/vndservice \
    $(DEVICE_PATH)/recovery/root/system/bin/gatekeeperd:root/system/bin/gatekeeperd \
    $(DEVICE_PATH)/recovery/root/system/bin/servicemanager:root/system/bin/servicemanager \
    $(DEVICE_PATH)/recovery/root/system/bin/hwservicemanager:root/system/bin/hwservicemanager \
    $(DEVICE_PATH)/recovery/root/system/bin/vndservicemanager:root/system/bin/vndservicemanager \
    $(DEVICE_PATH)/recovery/root/system/bin/wait_for_keymaster:root/system/bin/wait_for_keymaster \
    $(DEVICE_PATH)/recovery/root/system/bin/vold_prepare_subdirs:root/system/bin/vold_prepare_subdirs
    

# VENDOR TEEI DEAMONS & SERVICES (Gatekeeper / Keymaster)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/bin/teei_daemon:recovery/root/vendor/bin/teei_daemon \
    $(DEVICE_PATH)/recovery/root/vendor/bin/bp_kmsetkey_ca:recovery/root/vendor/bin/bp_kmsetkey_ca \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service:recovery/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/vendor.microtrust.hardware.capi@2.0-service:recovery/root/vendor/bin/hw/vendor.microtrust.hardware.capi@2.0-service \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/android.hardware.keymaster@4.0-service.beanpod:recovery/root/vendor/bin/hw/android.hardware.keymaster@4.0-service.beanpod \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-service:recovery/root/vendor/bin/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-service

# VENDOR SO LIBRARIES (32-bit & 64-bit)
PRODUCT_COPY_FILES += \
$(DEVICE_PATH)/recovery/root/vendor/lib/libmtee.so:recovery/root/vendor/lib/libmtee.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libion_mtk.so:recovery/root/vendor/lib/libion_mtk.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libimsg_log.so:recovery/root/vendor/lib/libimsg_log.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libion_ulit.so:recovery/root/vendor/lib/libion_ulit.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libTEECommon.so:recovery/root/vendor/lib/libTEECommon.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libcrypto-mdapp.so:recovery/root/vendor/lib/libcrypto-mdapp.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/kmsetkey.mt6765.so:recovery/root/vendor/lib/hw/kmsetkey.mt6765.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/kmsetkey.default.so:recovery/root/vendor/lib/hw/kmsetkey.default.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/gatekeeper.mt6765.so:recovery/root/vendor/lib/hw/gatekeeper.mt6765.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libkeymaster4support.so:recovery/root/vendor/lib/libkeymaster4support.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/libSoftGatekeeper.so:recovery/root/vendor/lib/hw/libSoftGatekeeper.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libpuresoftkeymasterdevice.so:recovery/root/vendor/lib/libpuresoftkeymasterdevice.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/vendor.microtrust.hardware.capi@2.0.so:recovery/root/vendor/lib/vendor.microtrust.hardware.capi@2.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/android.hardware.gatekeeper@1.0-impl.so:recovery/root/vendor/lib/hw/android.hardware.gatekeeper@1.0-impl.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.0.so:recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.1.so:recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.1.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so:recovery/root/vendor/lib/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libmtee.so:recovery/root/vendor/lib64/libmtee.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libion_mtk.so:recovery/root/vendor/lib64/libion_mtk.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libion_ulit.so:recovery/root/vendor/lib64/libion_ulit.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkmsetkey.so:recovery/root/vendor/lib64/libkmsetkey.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libimsg_log.so:recovery/root/vendor/lib64/libimsg_log.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkeymaster4.so:recovery/root/vendor/lib64/libkeymaster4.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libTEECommon.so:recovery/root/vendor/lib64/libTEECommon.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libcrypto-mdapp.so:recovery/root/vendor/lib64/libcrypto-mdapp.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/kmsetkey.mt6765.so:recovery/root/vendor/lib64/hw/kmsetkey.mt6765.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/kmsetkey.default.so:recovery/root/vendor/lib64/hw/kmsetkey.default.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/libSoftGatekeeper.so:recovery/root/vendor/lib64/hw/libSoftGatekeeper.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkeymaster4support.so:recovery/root/vendor/lib64/libkeymaster4support.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/gatekeeper.mt6765.so:recovery/root/vendor/lib64/hw/gatekeeper.mt6765.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libpuresoftkeymasterdevice.so:recovery/root/vendor/lib64/libpuresoftkeymasterdevice.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/vendor.microtrust.hardware.capi@2.0.so:recovery/root/vendor/lib64/vendor.microtrust.hardware.capi@2.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl.so:recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.0.so:recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.1.so:recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.1.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so:recovery/root/vendor/lib64/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so

# TRUSTED APPLICATIONS (TA Files)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/7778c03fc30c4dd0a319ea29643d4d4b.ta:recovery/root/vendor/thh/ta/7778c03fc30c4dd0a319ea29643d4d4b.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/7778c03fc30c4dd0a319ea29643d4dc0.ta:recovery/root/vendor/thh/ta/7778c03fc30c4dd0a319ea29643d4dc0.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/93feffccd8ca11e796c7c7a21acb4932.ta:recovery/root/vendor/thh/ta/93feffccd8ca11e796c7c7a21acb4932.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/c09c9c5daa504b78b0e46eda61556c3a.ta:recovery/root/vendor/thh/ta/c09c9c5daa504b78b0e46eda61556c3a.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/c1882f2d885e4e13a8c8e2622461b2fa.ta:recovery/root/vendor/thh/ta/c1882f2d885e4e13a8c8e2622461b2fa.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/d91f322ad5a441d5955110eda3272fc0.ta:recovery/root/vendor/thh/ta/d91f322ad5a441d5955110eda3272fc0.ta

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2020-03-05

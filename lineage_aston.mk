#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from aston device
$(call inherit-product, device/oneplus/aston/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_aston
PRODUCT_DEVICE := aston
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2609

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 15 AP3A.240617.008 1758859159691 release-keys" \
    BuildFingerprint=OnePlus/CPH2609EEA/OP5D35L1:15/TP1A.220905.001/U.R4T3.1632d6d_9d6f90_9e012b:user/release-keys \
    DeviceName=OP5D35L1 \
    DeviceProduct=CPH2609 \
    SystemDevice=OP5D35L1 \
    SystemName=CPH2609

# Face Unlock
TARGET_FACE_UNLOCK := true
# Blur
TARGET_ENABLE_BLUR := true
# BCR (Call recording)
TARGET_PREBUILT_BCR := true

# Mist OS Flags
MIST_BUILD_TYPE := OFFICIAL
MISTOS_MAINTAINER := weaponmasterjax
WITH_GMS := true
TARGET_USES_PICO_GAPPS := false
PRODUCT_NO_CAMERA := false
TARGET_SUPPORTS_QUICK_TAP := true
BYPASS_CHARGE_SUPPORTED := true

PRODUCT_SYSTEM_PROPERTIES += \
    ro.mist.display="1264 x 2780, 120 hz" \
    ro.mist.battery="5500mah" \
    ro.mist.soc="Snapdragon® 8 Gen 2" \
    ro.mist.camera="50MP + 8MP + 2MP" \
    ro.mist.front="16MP" \
    ro.mist.platform="SM8550-AB" \
    ro.mist.screen="6.78' LTPO4 AMOLED" \
    ro.mist.device.name="OnePlus 12R"
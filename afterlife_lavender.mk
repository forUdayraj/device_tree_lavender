#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Evolution X stuff
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# CoreGapps

AFTERLIFE_GAPPS := true
AFTERLIFE_CORE := true

# Maintainer

AFTERLIFE_MAINTAINER :=muxan

# FaceUnlock

TARGET_FACE_UNLOCK_SUPPORTED := true

# Blur

TARGET_SUPPORTS_BLUR := true

# TouchGestures

TARGET_SUPPORTS_TOUCHGESTURES := true


# Device identifier. This must come after all inclusions.
PRODUCT_NAME := afterlife_lavender
PRODUCT_DEVICE := lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := lavender


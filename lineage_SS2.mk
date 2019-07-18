#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common AOSP stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from SS2 device
$(call inherit-product, device/sharp/SS2/device.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/sharp/SS2/SS2-vendor.mk)

# Inherit from sharp sdm660-common
$(call inherit-product, device/sharp/sdm660-common/sdm660.mk)

# Set Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Asserts
TARGET_OTA_ASSERT_DEVICE := SS2

# Boot Animation
TARGET_SCREEN_HEIGHT := 2040
TARGET_SCREEN_WIDTH := 1080

PRODUCT_NAME := lineage_SS2
PRODUCT_DEVICE := SS2
PRODUCT_MANUFACTURER := Sharp
PRODUCT_BRAND := Sharp
PRODUCT_MODEL := Sharp S2

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=SS2 \
    PRODUCT_NAME=SS2 \
    PRIVATE_BUILD_DESC="SAT_00CN_MCDA SAT:8.0.0 OPR1.170623.027 00CN_2_180 release-keys"

BUILD_FINGERPRINT := FIH/SAT_00CN_MCDA/SAT:8.0.0/OPR1.170623.027/00CN_2_180:user/release-keys

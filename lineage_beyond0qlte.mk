#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from r5q device
$(call inherit-product, device/samsung/beyond0qlte/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_beyond0qlte
PRODUCT_DEVICE := beyond0qlte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G9700
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_DEVICE=beyond0qlte \
	TARGET_BOOTLOADER_BOARD_NAME=msmnile \
	PRODUCT_NAME=beyond0qltesq \
	PRIVATE_BUILD_DESC="beyond0qltesq-user 11 RP1A.200720.012 G970USQS4FUA1 release-keys"

BUILD_FINGERPRINT := "samsung/beyond0qltesq/beyond0q:11/RP1A.200720.012/G970USQS4FUA1:user/release-keys"

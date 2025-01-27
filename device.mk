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

DEVICE_PATH := device/samsung/beyond0qlte

# Inherit common device configuration
$(call inherit-product, device/samsung/sm8150-common/common.mk)
ifeq ($(WITH_GMS), true)
	$(call inherit-product, vendor/partner_gms/products/gms.mk)
endif

PRODUCT_SHIPPING_API_LEVEL := 28

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

# HIDL Manifest
# Because we don't include vendor and odm partition in .zip, DEVICE_MANIFEST_FILE can't be used
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/beyond0qlte_lineageos_fm_manifest.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PLATFORM_VNDK_VERSION)/etc/vintf/manifest/beyond0qlte_lineageos_fm_manifest.xml

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PLATFORM_VNDK_VERSION)/etc/audio_policy_configuration.xml

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.samsung

# Init
PRODUCT_PACKAGES += \
	fstab.qcom

# Lights
#PRODUCT_PACKAGES += \
#	android.hardware.light-service.sm8150

# Skip Mount
PRODUCT_PACKAGES += \
    gsi_skip_mount.cfg
	

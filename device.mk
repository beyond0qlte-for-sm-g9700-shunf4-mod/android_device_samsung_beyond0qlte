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

# Init files
PRODUCT_PACKAGES += \
    init.beyond0qlte.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

# Lights
#PRODUCT_PACKAGES += \
#	android.hardware.light-service.sm8150

# Skip Mount
PRODUCT_PACKAGES += \
    gsi_skip_mount.cfg
	

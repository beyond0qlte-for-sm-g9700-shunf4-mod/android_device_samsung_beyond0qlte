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

# Inherit common board flags
-include device/samsung/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/beyond0qlte

#WITH_GMS := true

# Board
#TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Kernel
# TARGET_KERNEL_CONFIG := lineage_beyond0qlte_defconfig
TARGET_KERNEL_CONFIG := beyond0qlte_chn_open_defconfig

# BOARD_USERDATAIMAGE_PARTITION_SIZE := 118112366592
# BOARD_SYSTEMIMAGE_PARTITION_SIZE := 6853492736
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Root
TARGET_FS_CONFIG_GEN += $(DEVICE_PATH)/config.fs

# Sepolicy
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Vendor init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_beyond0qlte
TARGET_RECOVERY_DEVICE_MODULES := libinit_beyond0qlte


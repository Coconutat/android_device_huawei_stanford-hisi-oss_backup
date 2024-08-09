#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/huawei/stanford

# Inherit from hi3660-common
include device/huawei/hi3660-common/BoardConfigCommon.mk

# Partitions - dynamic
BOARD_SUPER_PARTITION_BLOCK_DEVICES := cust eng_system eng_vendor odm patch preas preavs prets pretvs product system vendor
BOARD_SUPER_PARTITION_PRETS_DEVICE_SIZE := 25165824
BOARD_SUPER_PARTITION_PRETVS_DEVICE_SIZE := 8388608
BOARD_SUPER_PARTITION_PRODUCT_DEVICE_SIZE := 763363328
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 2894069760

BOARD_SUPER_PARTITION_SIZE := 6299844608

# Display
TARGET_SCREEN_DENSITY := 420

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit the proprietary files
include vendor/huawei/stanford/BoardConfigVendor.mk

#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common rova-common
include device/xiaomi/rova-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/rolex

# Kernel
TARGET_KERNEL_CONFIG := mi8937_defconfig

# Security patch level
VENDOR_SECURITY_PATCH := 2018-07-01

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit from the proprietary version
include vendor/xiaomi/rolex/BoardConfigVendor.mk

# Include system.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

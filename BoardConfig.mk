#
# Copyright (C) 2011 The Android Open-Source Project
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

# Allow compatibility with old touchscreens
BOARD_USE_LEGACY_TOUCHSCREEN := true

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# Fake building with eclair cam
BOARD_USES_ECLAIR_LIBCAMERA := true

# Use the non-open-source parts, if they're present
-include vendor/htc/desirec/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOOTLOADER_BOARD_NAME := desirec
TARGET_OTA_ASSERT_DEVICE := desirec
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=desirec

# ARMv6-compatible processor rev 5 (v6l)
TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6j

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libWifiApi
BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/sta_dk_4_0_4_32
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "wlan"
WIFI_FIRMWARE_LOADER        := "wlan_loader"
WIFI_DRIVER_FW_STA_PATH     := "/etc/firmware/brf6350.bin"
WIFI_DRIVER_FW_AP_PATH      := "/etc/wifi/Fw1251r1c.bin"

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x11200000

#libsurfaceflinger to avoid Draw Texture Extenstion
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

BOARD_USES_GENERIC_AUDIO := false

# Use HTC USB Function Switch to enable tethering via USB
BOARD_USE_HTC_USB_FUNCTION_SWITCH := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true

BOARD_HAVE_BLUETOOTH := true

BOARD_VENDOR_USE_AKMD := akm8973

BOARD_VENDOR_QCOM_AMSS_VERSION := 4410

BOARD_USES_QCOM_HARDWARE := true

TARGET_HARDWARE_3D := false

# OpenGL drivers config file path
BOARD_EGL_CFG := device/htc/desirec/egl.cfg

BOARD_USE_HTC_LIBSENSORS := true
BOARD_USE_desirec_LIBSENSORS := true

BOARD_USES_QCOM_LIBS := true

BUILD_LIBCAMERA := true
BOARD_CAMERA_LIBRARIES := libcameraservice libcamera

BOARD_USES_GPSSHIM := true

BOARD_GPS_NEEDS_XTRA := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

BOARD_NO_RGBX_8888 := true

JS_ENGINE := v8

# Stagefright fully enabled
BUILD_WITH_FULL_STAGEFRIGHT := true

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00040000 00020000 "misc"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00280000 00020000 "boot"
# mtd3: 05a00000 00020000 "system"
# mtd4: 05000000 00020000 "cache"
# mtd5: 127c0000 00020000 "userdata"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x002c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00420000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0f000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x01920000

# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/htc/desirec/kernel

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=\$(TOP)/device/htc/desirec/prelink-linux-arm-desirec.map


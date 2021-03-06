#
# Copyright 2014 The Android Open Source Project
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

# SoC architecture
TARGET_BOARD_PLATFORM := msm7627a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a5
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
ARCH_ARM_HAVE_ARMV7A := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HIGH_OPTIMIZATION := true
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USES_GENLOCK := true
TARGET_ARCH_LOWMEM := true
TARGET_USES_ION := true
BOARD_USES_ION := true 
COMMON_GLOBAL_CFLAGS += -DUSE_ION
TARGET_GLOBAL_CFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4 -mtune=cortex-a5
TARGET_GLOBAL_CPPFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4 -mtune=cortex-a5

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/g3u
TARGET_KERNEL_CONFIG := g3u_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
TARGET_PROVIDES_INIT_TARGET_RC := true

# Kernel NEPI (Natural Environment Preservation Initiative)
BOARD_KERNEL_BASE := 0x3100000
BOARD_PAGE_SIZE := 2048
BOARD_FORCE_RAMDISK_ADDRESS := 0x4508000

# (o) Add includes (TODO check each header to clean up unused stuff)
TARGET_SPECIFIC_HEADER_PATH := device/htc/g3u/include

# (o) Releasetools (???)
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

# Recovery
TARGET_RECOVERY_INITRC := device/htc/g3u/prebuilt/recovery/init.rc
BOARD_USES_MMCUTILS := true

# CWM Recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# Fix CM Framebuffer Boundary Size
BOARD_CUSTOM_GRAPHICS := ../../../device/htc/g3u/fixes/graphics.c

# TWRP Recovery
DEVICE_RESOLUTION := 480x800
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INCLUDE_DUMLOCK := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.524801/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16776192
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1207959552
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_CACHEIMAGE_PARTITION_SIZE :=  116129792
BOARD_FLASH_BLOCK_SIZE := 131072

# VOLD
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 43

# QCOM
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX

# WiMax
COMMON_GLOBAL_CFLAGS += -DBOARD_HAVE_SQN_WIMAX
BOARD_HAVE_SQN_WIMAX := true

# HTC
COMMON_GLOBAL_CFLAGS += -DHTCLOG

# Web Rendering
ENABLE_WEBGL := true
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
TARGET_FORCE_CPU_UPLOAD := true

# Media
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_MEDIA_VARIANT := legacy

# Boot
BOARD_WANTS_EMMC_BOOT := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

###########
#         #
# Unavail #
#         #
###########

# Boot (S-OFF unavailable)
TARGET_BOOTLOADER_BOARD_NAME := g3u
TARGET_NO_BOOTLOADER := true

# Radio (S-OFF unavailable)
TARGET_NO_RADIOIMAGE := true

###########
#         #
# Working #
#         #
###########

# RIL
TARGET_PROVIDES_LIBRIL := vendor/htc/g3u/proprietary/libril.so
BOARD_USE_NEW_LIBRIL_HTC := true
BOARD_USES_LEGACY_RIL := true
BOARD_PROVIDES_LIBRIL := true

# Graphics
BOARD_USES_ADRENO_200 := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
BOARD_USE_SKIA_LCDTEXT := true
TARGET_GRALLOC_USES_ASHMEM := true
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := vendor/htc/g3u/proprietary/lib/egl/egl.cfg
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_SF_BYPASS := false
TARGET_HAVE_BYPASS := false
TARGET_USES_OVERLAY := false
TARGET_QCOM_HDMI_OUT := false
TARGET_NO_HW_VSYNC := true #TODO: check here!
#BOARD_EGL_WORKAROUND_BUG_10194508 := true
#BOARD_USE_MHEAP_SCREENSHOT := true
#TARGET_DOESNT_USE_FENCE_SYNC := true
#TARGET_QCOM_DISPLAY_VARIANT := legacy

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := g3u
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Touch
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

###########
#         #
# Broken! #
#         #
###########

# Darkness (...is spreading)
#TARGET_PROVIDES_LIBLIGHTS := false

#Wifi (ATH6kl) [still only works by manually symlinking wpa_wlan0 to wlan0 and using the stock libs (init.target.rc)]
BOARD_WLAN_DEVICE := ath6kl
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_ath6kl
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/ath6kl_sdio.ko"
WIFI_DRIVER_MODULE_NAME := "ath6kl_sdio"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
WIFI_EXT_MODULE_NAME := "cfg80211"

WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_DRIVER_FW_PATH_PARAM := ""


# USB
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1

# Audio
#BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_PROVIDES_LIBAUDIO := true
#BOARD_HAVE_HTC_AUDIO := true
#COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_LPA -DQCOM_ACDB_ENABLED -DQCOM_VOIP_ENABLED -DQCOM_HTC_AUDIO -DQCOM_ICS_LPA_COMPAT
#TARGET_USES_QCOM_LPA := true
#QCOM_TUNNEL_LPA_ENABLED := true
#COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_LPA
#QCOM_VOIP_ENABLED := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_VOIP_ENABLED

BOARD_USE_QCOM_LPA := true
BOARD_QCOM_TUNNEL_LPA_ENABLED := false
BOARD_QCOM_VOIP_ENABLED := true
COMMON_GLOBAL_CFLAGS += -DHTC_ACOUSTIC_AUDIO -DQCOM_VOIP_ENABLED -DQCOM_ACDB_ENABLED -DLEGACY_QCOM_VOICE
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_QCOM_AUDIO_VARIANT := caf

BOARD_NO_SPEAKER := true

#BOARD_USES_FLUENCE_INCALL := true
#BOARD_USES_SEPERATED_AUDIO_INPUT := true
#BOARD_USES_SEPERATED_VOICE_SPEAKER := true
#BOARD_USES_SEPERATED_VOIP := true
#BOARD_AUDIO_AMPLIFIER := device/htc/g3u/myLibs/libaudioamp
#BOARD_HAVE_HTC_CSDCLIENT := true



# FM
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED -DQCOM_NEW_FM


# inherit from the proprietary version
-include vendor/htc/g3u/BoardConfigVendor.mk

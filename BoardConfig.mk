#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a03s

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# OTA Assert
TARGET_OTA_ASSERT_DEVICE := a03s,a03snnxx
AB_OTA_UPDATER := false

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a
TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi

TARGET_USES_64_BIT_BINDER := true
TARGET_CPU_SMP := true
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true
TARGET_USES_UEFI := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := a03s
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Hardware
BOARD_VENDOR := Mediatek
TARGET_SOC := MT6765V/WB
TARGET_BOARD_PLATFORM := MT6765
TARGET_BOARD_PLATFORM_GPU := := PowerVR Rogue GE8320
BOARD_USES_MTK_HARDWARE := true
TARGET_HARDWARE_3D := true

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Boot
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 loop.max_part=7
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x11a88000
BOARD_KERNEL_TAGS_OFFSET := 0x07808000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_SECOND_OFFSET := 0xbff88000
BOARD_DTB_OFFSET := 0x07808000
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --board "SRPUE06A007"
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true

BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/bootimg.mk

# Kernel
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/recovery.img-dtb
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/recovery_dtbo
BOARD_INCLUDE_DTB_IN_BOOTIMG :=
BOARD_KERNEL_SEPARATED_DTBO :=
endif

# Partitions
BOARD_FLASH_BLOCK_SIZE := 13107
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 38797312
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_ODMIMAGE_PARTITION_SIZE := 4349952
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 131787512
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3703758848
BOARD_VENDORIMAGE_PARTITION_SIZE := 768073728

# Dynamic partitions
BOARD_SUPER_PARTITION_SIZE := 6106906624
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 6106906624
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product odm

BOARD_ROOT_EXTRA_FOLDERS := data_mirror debug_ramdisk linkerconfig postinstall
BOARD_SUPPRESS_SECURE_ERASE := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_USES_METADATA_PARTITION := true
BOARD_USES_VENDORIMAGE := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_COPY_OUT_USERDATA := userdata
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
TARGET_COPY_OUT_SYSTEM := system
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_PRODUCT := product
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_ODM := odm

# Do not go full treble for recovery
PRODUCT_FULL_TREBLE_OVERRIDE := false

# VNDK
BOARD_VNDK_VERSION := current

# Recovery
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_OUT_SHARED_LIBRARIES := true
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
RECOVERY_SDCARD_ON_DATA := true

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := 5
BOARD_AVB_ALGORITHM := SHA512_RSA4096 
BOARD_AVB_KEY_PATH := /external/avb/test/data/rsa_key_4096bits.pem
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP) 
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 2

# Platform
PLATFORM_VERSION := 12
PLATFORM_SECURITY_PATCH :=2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31

# TWRP specific build flags
RECOVERY_VARIANT := TWRP
TW_THEME := portrait_hdpi
# Do not set up legacy properties
TW_NO_LEGACY_PROPS := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 50
TW_Y_OFFSET := 50
TW_H_OFFSET := -50
TW_FRAMERATE := 60
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_EXCLUDE_TWRPAPP := true
TW_EXTRA_LANGUAGES := true
TW_USE_NEW_MINADBD := true
TARGET_USES_MKE2FS := true
TW_NO_BIND_SYSTEM := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_FUSE_EXFAT := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"

# Display
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 1600

# Debug-tools
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TWRP_EVENT_LOGGING := true

# Tools
TW_INCLUDE_PYTHON := true
TW_INCLUDE_LPDUMP := true
TW_INCLUDE_LPTOOLS := true
TW_EXCLUDE_APEX := true

TW_DEVICE_VERSION := Galaxy A03s

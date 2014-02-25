USE_CAMERA_STUB := true
BOARD_HAVE_FRONT_CAM := true
BOARD_HAVE_BACK_CAM := false

# inherit from the proprietary version
##-include vendor/teclast/p76h/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
#PRODUCT_COPY_FILES += audio.primary.amlogic #is copied with prop files
PRODUCT_COPY_FILES += device/teclast/p76h/configs/audio_policy.conf:system/etc/audio_policy.conf

#ARCH_ARM_HAVE_VFP := true
#TARGET_ARCH := arm
#TARGET_ARCH_VARIANT_CPU := cortex-a9
#TARGET_ARCH_VARIANT_FPU := neon
#ARCH_ARM_HAVE_NEON := true
#ARCH_ARM_HAVE_TLS_REGISTER := true
#ARCH_ARM_HAVE_ARMV7A := true
#TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp



TARGET_BOOTLOADER_BOARD_NAME := p76h

BOARD_KERNEL_CMDLINE := 
#BOARD_KERNEL_BASE := 0x
#BOARD_KERNEL_PAGESIZE := 


# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x40000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x16d400000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/teclast/p76h/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_RECOVERY_UI_LIB  := librecovery_ui_p76h

#TARGET_KERNEL_SOURCE := kernel/teclast/p76h
#TARGET_KERNEL_CONFIG := meson6smp_android_defconfig
BOARD_USES_UBOOT := true 

TARGET_PROVIDES_INIT_RC := false
#TARGET_RECOVERY_INITRC := device/teclast/p76h/recovery.init.rc


BOARD_EGL_CFG := device/teclast/p76h/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true
USE_OPENGL_RENDERER := true
ENABLE_WEBGL := true
#BOARD_USE_SKIA_LCDTEXT := true

# CWM
#TARGET_RECOVERY_INITRC := device/ainol/elf2/recovery.init.rc
#BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"

TARGET_BOOTANIMATION_PRELOAD := true


#BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_CMDLINE := console=ttyS0,115200in8 init=/init loglevel=8 debug setenv bootargs hdmitx=vdacoff,powermode1,unplug_powerdown a9_clk_max=1200000000


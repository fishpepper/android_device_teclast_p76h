# Camera
PRODUCT_PACKAGES += \
	Camera

# Live Wallpapers
PRODUCT_PACKAGES += \
	Galaxy4 \
	HoloSpiralWallpaper \
	NoiseField \
	PhaseBeam \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	VisualizationWallpapers \
	librs_jni

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/teclast/p76h/p76h-vendor.mk)
DEVICE := p76h
VENDOR := teclast
$(call inherit-product, vendor/$(VENDOR)/$(DEVICE)/$(DEVICE)-vendor-blobs.mk)


DEVICE_PACKAGE_OVERLAYS += device/teclast/p76h/overlay

LOCAL_PATH := device/teclast/p76h
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

###$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_p76h
PRODUCT_DEVICE := p76h

PRODUCT_CHARACTERISTICS := tablet
TARGET_BOOTANIMATION_NAME := horizontal-1024x600

$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)


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

#sound
PRODUCT_PACKAGES += \
	libaudioutils \
	libtinyalsa

#wifi
PRODUCT_PACKAGES += \
 	wpa_supplicant.conf \
	libnetcmdiface

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

PRODUCT_COPY_FILES += \
    device/teclast/p76h/init.amlogic.rc:root/init.amlogicmeson6yuken72acustomerpl.rc

#ts idc
PRODUCT_COPY_FILES += \
    device/teclast/p76h/goodix_gt811.idc:system/usr/idc/goodix_gt811.idc

###$(call inherit-product, build/target/product/full.mk)

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml 
    #frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    #frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    #packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

DEVICE_PACKAGE_OVERLAYS := devic

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_NAME := full_p76h
PRODUCT_DEVICE := p76h

PRODUCT_CHARACTERISTICS := tablet
TARGET_BOOTANIMATION_NAME := horizontal-1024x600

# density in DPI of the LCD of this board. This is used to scale the UI
# appropriately. If this property is not defined, the default value is 160 dpi. 
PRODUCT_PROPERTY_OVERRIDES +=  ro.sf.lcd_density=160

#adb
PRODUCT_PROPERTY_OVERRIDES += persist.sys.usb.config=adb 
#PRODUCT_PROPERTY_OVERRIDES += ro.hardware=amlogic #does not work
PRODUCT_PROPERTY_OVERRIDES += wifi.interface=wlan0

#fixed gl rev for angry birds etc
PRODUCT_PROPERTY_OVERRIDES += ro.opengles.version=131072 

$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)


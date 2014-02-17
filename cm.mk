# Boot animation
TARGET_SCREEN_HEIGHT := 600
TARGET_SCREEN_WIDTH := 1024

## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := p76h

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/teclast/p76h/device_p76h.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p76h
PRODUCT_NAME := cm_p76h
PRODUCT_BRAND := teclast
PRODUCT_MODEL := p76h
PRODUCT_MANUFACTURER := teclast

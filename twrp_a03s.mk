
PRODUCT_RELEASE_NAME := a03s
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

#vendor/pb/config/common.mk for PBRP

$(call inherit-product, vendor/twrp/Android.mk)

# Inherit from a03s device
$(call inherit-product, device/samsung/a03s/device.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a03s/recovery/root,recovery/root)

#Other extra stuff
$(call inherit-product, vendor/twrp/config/packages.mk)

PRODUCT_DEVICE := a03s
PRODUCT_NAME := twrp_a03s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy A03s
PRODUCT_MANUFACTURER := samsung

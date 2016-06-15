## Specify phone tech before including full_phone

#$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := OptimusX

TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/is11lg/is11lg.mk)

# Device naming
PRODUCT_DEVICE := is11lg
PRODUCT_NAME := cm_is11lg
PRODUCT_BRAND := KDDI
PRODUCT_MODEL := IS11LG
PRODUCT_MANUFACTURER := LGE
PRODUCT_DEFAULT_LANGUAGE := ja
PRODUCT_DEFAULT_REGION := JP

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE=x2 PRODUCT_NAME=LGI11 BUILD_FINGERPRINT=KDDI/LGI11/x2:4.0.4/IMM76L/IS11LG-V10g.1365144916:user/release-keys PRIVATE_BUILD_DESC="bssq_kddi_jp-user 4.0.4 IMM76L IS11LG-V10g.1365144916 release-keys"




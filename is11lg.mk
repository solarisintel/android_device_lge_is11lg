$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, build/target/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/lge/is11lg/is11lg-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# charger 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/charger:root/charger \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_charging_03.png:root/res/images/charger/battery_charging_03.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_charging_05.png:root/res/images/charger/battery_charging_05.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_charging_bg.png:root/res/images/charger/battery_charging_bg.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_charging_02.png:root/res/images/charger/battery_charging_02.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/warning_trickle_JP.png:root/res/images/charger/warning_trickle_JP.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_charging_01.png:root/res/images/charger/battery_charging_01.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_charging_04.png:root/res/images/charger/battery_charging_04.png \
    $(LOCAL_PATH)/ramdisk/res/images/security/errorlogo.png:root/res/images/security/errorlogo.png

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
    $(LOCAL_PATH)/ramdisk/init.bssq.rc:root/init.bssq.rc \
    $(LOCAL_PATH)/ramdisk/init.bssq.usb.rc:root/init.bssq.usb.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.bssq.rc:root/ueventd.bssq.rc 

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/setup-recovery:system/bin/setup-recovery \
    $(LOCAL_PATH)/ramdisk/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    $(LOCAL_PATH)/ramdisk/busybox:recovery/root/sbin/busybox2 

# Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/asound.conf:system/etc/asound.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/gps_brcm_conf.xml:system/etc/gps_brcm_conf.xml \
    $(LOCAL_PATH)/configs/lge_synaptics.idc:system/usr/idc/lge_synaptics.idc \
    $(LOCAL_PATH)/configs/lge_synaptics.kl:system/usr/keylayout/lge_synaptics.kl \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml
 
# mobile network
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.vsnet:system/bin/init.vsnet \
    $(LOCAL_PATH)/prebuilt/init.vsnet-down:system/bin/init.vsnet-down

# kernel module 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \
    $(LOCAL_PATH)/prebuilt/bthid.ko:system/lib/modules/bthid.ko \
    $(LOCAL_PATH)/prebuilt/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    $(LOCAL_PATH)/prebuilt/wireless.ko:system/lib/modules/wireless.ko 

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += ja_JP hdpi

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    hwcomposer.default 

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Bluetooth
PRODUCT_PACKAGES += \
    brcm_patchram_plus

# Bluetooth
PRODUCT_PACKAGES += \
    hcitool \
    hciconfig \
    hwaddrs

# Baseband
PRODUCT_PACKAGES += \
    lgcpversion.is11lg 

# Lights
PRODUCT_PACKAGES += \
    lights

# Radio 
FRAMEWORKS_BASE_SUBDIRS += ../../$(LOCAL_PATH)/ril/

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device naming
PRODUCT_DEVICE := is11lg
PRODUCT_NAME := full_is11lg
PRODUCT_BRAND := KDDI
PRODUCT_MODEL := IS11LG
PRODUCT_MANUFACTURER := LGE

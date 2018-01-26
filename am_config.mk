#
# AOSPMod simple config file
#

AM_VERSION := NGT-R.00
AOSP_TAG_ID := android-7.1.2_r36

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/aospmod/overlay/common

# ADBlock file
PRODUCT_COPY_FILES += \
    vendor/aospmod/extra/hosts:system/etc/hosts

# Expose SELinux settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.aospmod.version=$(AM_VERSION) \
    ro.aosptag.id=$(AOSP_TAG_ID)

# Include Google Apps
#include vendor/google/gapps/gapps.mk

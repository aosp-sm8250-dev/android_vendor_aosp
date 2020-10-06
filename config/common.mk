# APN configurations
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/etc/apns-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml

# GMS
ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gms/core/core.mk)
ifneq ($(WITH_GMS_CORE), true)
$(call inherit-product, vendor/gms/extras/extras.mk)
endif

PRODUCT_PACKAGES += \
    LatinIMEGooglePrebuilt
endif

# LineageOS apps
PRODUCT_PACKAGES += \
    Eleven \
    Jelly

# Messaging
PRODUCT_PACKAGES += \
    messaging

# Overlays
PRODUCT_PACKAGES += \
    DocumentsUIOverlay \
    FrameworksOverlay \
    SettingsProviderOverlay \
    SystemUIOverlay

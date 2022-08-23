# Audio
$(call inherit-product, vendor/aosp/config/audio.mk)

# APN configurations
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/etc/apns-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml

# GMS
ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gms/core/core.mk)
ifeq ($(WITH_GMS_CORE), false)
$(call inherit-product, vendor/gms/extras/extras.mk)
endif

PRODUCT_PACKAGES += \
    LatinIMEGooglePrebuilt
endif

# LineageOS apps
PRODUCT_PACKAGES += \
    Eleven \
    ExactCalculator \
    Jelly

# Messaging
PRODUCT_PACKAGES += \
    messaging

# Overlays
PRODUCT_PACKAGES += \
    DocumentsUIOverlay \
    FrameworksOverlay \
    Launcher3Overlay \
    SettingsOverlay \
    SettingsProviderOverlay \
    SystemUIOverlay \
    ThemePickerOverlay

# ThemePicker
PRODUCT_PACKAGES += \
    ThemePicker

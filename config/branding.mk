# Versioning System
ANDROID_VERSION = 9.0

# Set all versions
DATE := $(shell date -u +%Y%m%d)
DU_VERSION := $(TARGET_PRODUCT)-$(ANDROID_VERSION)-$(DATE)
TARGET_BACON_NAME := $(DU_VERSION)
ROM_FINGERPRINT := DarkUnicorns/$(PLATFORM_VERSION)/$(DATE)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.du.version=$(DU_VERSION) \
    ro.mod.version=$(ANDROID_VERSION)-$(DATE) \
    ro.du.fingerprint=$(ROM_FINGERPRINT)

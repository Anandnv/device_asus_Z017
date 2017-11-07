#
# Copyright (C) 2017 AIMROM
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

-include device/asus/msm8916-common/BoardConfigCommon.mk
# call the proprietary setup
$(call inherit-product-if-exists, vendor/asus/Z017/Z017-vendor.mk)

# Inherit from msm8916-common
$(call inherit-product, device/asus/msm8953-common/msm8953.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_CONFIG := normal

# Device was launched with M
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=23

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

PRODUCT_PACKAGES += libGLES_android

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

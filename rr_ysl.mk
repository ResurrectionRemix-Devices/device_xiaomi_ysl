#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ysl device
$(call inherit-product, device/xiaomi/ysl/device.mk)

# Inherit some common RR stuff.

$(call inherit-product, vendor/rr/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720

# Inherit from custom vendor
$(call inherit-product, vendor/MiuiCamera/config.mk)

#RR-Stuff
RR_BUILDTYPE := Official
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ysl
PRODUCT_NAME := rr_ysl
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi S2
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
PRIVATE_BUILD_DESC="ysl-user 9 PKQ1.181021.001 V10.3.4.0.PEFMIXM release-keys" \
PRODUCT_NAME="ysl" \
TARGET_DEVICE="ysl"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys" 
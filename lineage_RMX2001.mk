#
# Copyright (C) 2020 Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2001/device.mk)

$(call inherit-product-if-exists, vendor/gapps/gapps.mk)

# Inherit some common crDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Poduct spec
IS_PHONE := true
scr_resolution := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_RMX2001
PRODUCT_DEVICE := RMX2001
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme G90T Series
PRODUCT_MANUFACTURER := realme

# Build info
BUILD_FINGERPRINT := "google/sunfish/sunfish:11/RQ3A.210705.001/7380771:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2001 \
    PRODUCT_NAME=RMX2001 \
    PRIVATE_BUILD_DESC="sunfish-user 11 RQ3A.210705.001 7380771 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo

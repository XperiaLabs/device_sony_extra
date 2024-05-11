#
# Copyright (C) 2024 XperiaLabs Project
# Copyright (C) 2024 The LineageOS Project
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

# Audio Folder Path
LOCAL_AUDIO := device/sony/extra/Sagami/audio

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    device/sony/extra/Sagami/audio

# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(LOCAL_AUDIO)/configs/vintf/framework_compatibility_matrix.xml

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(LOCAL_AUDIO)/sepolicy/vendor

# Props
include $(LOCAL_AUDIO)/configs/props/properties.mk

# Media Packages
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.2.vendor \
    libcodec2_hidl@1.2.vendor \
    libsfplugin_ccodec_utils.vendor \
    libcodec2_soft_common.vendor
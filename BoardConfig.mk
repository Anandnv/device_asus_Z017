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


# inherit from common msm8916-common
  -include device/asus/msm8953-common/BoardConfigCommon.mk

  -include vendor/asus/msm8953-common/BoardConfigVendor.mk

 DEVICE_PATH := device/asus/Z017

# Assert
TARGET_OTA_ASSERT_DEVICE := Z017,ASUS_Z017D_1,Z012,ASUS_Z012D,ASUS_Z012,ASUS_Z017

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Use Snapdragon LLVM, if available
TARGET_USE_SDCLANG := true

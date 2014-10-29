#!/bin/bash

# Copyright 2012 The Android Open Source Project
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
fastboot "$@" oem unlock 2>&1
fastboot "$@" flash bootloader byt_m_crb_64-LRX19-bootloader 2>&1
fastboot "$@" reboot-bootloader 2>&1
sleep 45
fastboot "$@"  -w update byt_m_crb_64-LRX19-img.zip 2>&1

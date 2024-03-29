#############################################################################
# Copyright (c) 2019 Cisco and/or its affiliates.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at:
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
##############################################################################

#!/bin/bash

set -ex

if [ ! -d android-sdk ]; then
	git clone https://github.com/manang/android-sdk.git
fi
cd android-sdk
make install-env
rm -rf qt/qt-opensource-*
rm -rf qt/qtci
rm -rf sdk/sdk-tools-*
cd ..
mv android-sdk/sdk .
mv android-sdk/qt .
rm -rf android-sdk
du -m --max-depth 1 | sort -rn

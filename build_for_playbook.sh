#!/bin/bash 

# Copyright (c) 2011 Research In Motion Limited.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

# http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This script builds the SDL library.  It is useful as 
# an example of how to build software for the playbook 
# platform where the build system for that software is 
# configured with autoconf tools. 


#We set a destination where everything gets installed.

PREFIX=$(pwd)/../install

echo "s#QNX_TARGET=.*#QNX_TARGET=${QNX_TARGET}#" > /tmp/replace.sed.$$
echo "Using QNX_TARGET: ${QNX_TARGET}"

for file in `ls lib/pkgconfig/*.pc`; do
  echo "Copying $file to ${PREFIX}/$file"
  sed -f /tmp/replace.sed.$$ $file > ${PREFIX}/$file
done

cp -v -a include/* ${PREFIX}/include

rm -f /tmp/replace.sed.$$
echo "Build successful."

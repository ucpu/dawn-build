#!/bin/bash

root_dir=`pwd`

#sed -i 's/\bSTATIC\b/OBJECT/g' dawn/dawn/src/tint/CMakeLists.txt
#sed -i 's/\btint_add_target\b/tint_add_target_override/g' dawn/dawn/src/tint/CMakeLists.txt

mkdir build
cd build
echo "configuring"
cmake -DCMAKE_BUILD_TYPE=RELEASE ..
echo "building"
cmake --build . --config Release
echo "installing"
cmake --install . --config Release --prefix "${root_dir}/install"
echo "done"
cd "$root_dir"



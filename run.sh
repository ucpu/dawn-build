#!/bin/bash

root_dir=`pwd`

#sed -i 's/\bSTATIC\b/OBJECT/g' dawn/dawn/src/tint/CMakeLists.txt
#sed -i 's/\btint_add_target\b/tint_add_target_override/g' dawn/dawn/src/tint/CMakeLists.txt

suffix="_linux"
paralel="-- -j8"
if [ "$OSTYPE" = "msys" ]; then
	suffix="_windows"
	paralel="--parallel 8"
fi

mkdir build${suffix}
cd build${suffix}
echo "configuring"
cmake -DCMAKE_BUILD_TYPE=RELEASE ..
echo "building"
cmake --build . --config Release ${paralel}
echo "installing"
cmake --install . --config Release --prefix "${root_dir}/install${suffix}"
echo "done"
cd "$root_dir"



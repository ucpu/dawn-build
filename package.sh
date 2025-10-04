#!/bin/bash

root_dir=`pwd`

echo "packaging"
mkdir -p install/dawn
cd install/dawn
cp ../../DawnConfig.cmake .
cp -r ../../install_linux/include .
mkdir lib
cp ../../install_linux/lib/*.a lib
cp ../../install_windows/lib/*.lib lib
cd ..
zip -r ../dawn.zip dawn
cd "$root_dir"
echo "done"


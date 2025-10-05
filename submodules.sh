#!/bin/bash

git submodule update --init cage
git submodule update --init dawn/dawn
cd dawn/dawn
git submodule update --init --jobs 8 third_party

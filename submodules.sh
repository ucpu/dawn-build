#!/bin/bash

git submodule update --init cage

cd dawn/dawn
git submodule update --init --jobs 8 third_party

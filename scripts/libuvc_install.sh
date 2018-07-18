#!/bin/sh
git clone https://github.com/pupil-labs/libuvc
cd libuvc
mkdir build
cd build
cmake ..
make && make install
ldconfig
rm -rf libuvc
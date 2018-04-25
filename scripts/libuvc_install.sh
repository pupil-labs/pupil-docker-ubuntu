#!/bin/bash -e

cd /root
git clone https://github.com/pupil-labs/libuvc
cd libuvc
mkdir build
cd build
cmake ..
make && make install
ldconfig
cd /root && rm -rf libuvc
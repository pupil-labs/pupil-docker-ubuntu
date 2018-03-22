#!/bin/sh
cd /root
git clone https://github.com/pupil-labs/libuvc
cd libuvc
mkdir build
cd build
cmake ..
make && make install
cd /root && rm -rf libuvc
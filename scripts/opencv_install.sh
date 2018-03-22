#!/bin/sh
cd /root
git clone https://github.com/opencv/opencv
cd opencv && mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DWITH_TBB=ON -DWITH_CUDA=OFF -DBUILD_opencv_python2=OFF -DBUILD_opencv_python3=ON ..
make -j2
make install
ldconfig
cd /root && rm -rf opencv

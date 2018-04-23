#!/bin/bash -e

cd /root
git clone --depth=1 https://github.com/opencv/opencv
cd opencv && mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE  \
      -DWITH_TBB=ON -DWITH_CUDA=OFF \
      -DBUILD_opencv_python2=OFF \
      -D CMAKE_INSTALL_PREFIX=/usr/local/opt/opencv/ \
      -DBUILD_EXAMPLES=OFF \
      -DBUILD_TESTS=OFF \
      -DBUILD_PERF_TESTS=OFF \
      -DBUILD_opencv_python3=ON ..
make -j"$(nproc)"
make install
ldconfig
cd /root && rm -rf opencv

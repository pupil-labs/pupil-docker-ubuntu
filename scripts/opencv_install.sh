#!/bin/bash -e

cd /root
git clone --depth=1 https://github.com/opencv/opencv
cd opencv && mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE  \
      -D WITH_TBB=ON -DWITH_CUDA=OFF \
      -D BUILD_opencv_python2=OFF \
      -D CMAKE_INSTALL_PREFIX=/usr/local/opt/opencv/ \
      -D BUILD_EXAMPLES=OFF \
      -D BUILD_TESTS=OFF \
      -D BUILD_PERF_TESTS=OFF \
      -D BUILD_opencv_python3=ON ..
make -j"$(nproc)"
make install
ldconfig
cd /root && rm -rf opencv

#
# make opencv available for python3.6
#
ln -s /usr/local/opt/opencv/lib/python3.6/dist-packages/cv2.cpython-36m-x86_64-linux-gnu.so /usr/local/lib/python3.6/dist-packages


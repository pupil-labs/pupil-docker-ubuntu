#!/bin/sh
cd /root
git clone https://ceres-solver.googlesource.com/ceres-solver
cd ceres-solver
mkdir build && cd build
cmake .. -DBUILD_SHARED_LIBS=ON
make -j3
make test
make install
sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/ceres.conf'
ldconfig
cd /root && rm -rf ceres-solver
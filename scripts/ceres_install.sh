#!/bin/bash -e

# google-glog + gflags
apt-get install libgoogle-glog-dev
# BLAS & LAPACK
apt-get install libatlas-base-dev
# Eigen3
apt-get install libeigen3-dev
# SuiteSparse and CXSparse (optional)
# - If you want to build Ceres as a *static* library (the default)
#   you can use the SuiteSparse package in the main Ubuntu package
#   repository:
apt-get install libsuitesparse-dev
# - However, if you want to build Ceres as a *shared* library, you must
#   add the following PPA:
#add-apt-repository ppa:bzindovic/suitesparse-bugfix-1319687
#apt-get update
#apt-get install libsuitesparse-dev


cd /root
git clone https://ceres-solver.googlesource.com/ceres-solver
cd ceres-solver
mkdir build && cd build
cmake .. -DBUILD_SHARED_LIBS=ON
make -j"$(nproc)"
make test
make install
sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/ceres.conf'
ldconfig
cd /root && rm -rf ceres-solver

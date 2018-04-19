#!/bin/sh
echo -e "\n##########\nUpdating apt-get\n##########\n"
apt-get -yq update
echo -e "\n##########\nInstalling all other apt packages\n##########\n"
apt-get install -yq --no-install-recommends \
pkg-config zip fakeroot git cmake build-essential nasm wget python3-pip python-setuptools\
libusb-1.0-0-dev python3-dev python3-pip python3-numpy python3-scipy libglew-dev libglfw3-dev libtbb-dev \
libavformat-dev libavcodec-dev libavdevice-dev libavutil-dev libswscale-dev \
libavresample-dev ffmpeg libav-tools x264 x265 libportaudio2 portaudio19-dev \
libboost-dev libboost-python-dev libgoogle-glog-dev libatlas-base-dev libeigen3-dev libsuitesparse-dev libopencv-dev \
libceres1 libceres-dev
# save space and clean up apt after install
echo -e "\n##########\nCleaning up apt after install to reduce image size\n##########\n"
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#!/bin/bash -e
# -e  Exit immediately if a command exits with a non-zero status
# -x  Print commands and their arguments as they are executed

echo -e "\n##########\nInstalling all other apt packages\n##########\n"
apt-get install -yq --no-install-recommends \
pkg-config zip fakeroot git cmake build-essential nasm wget curl \
libusb-1.0-0-dev libglew-dev libglfw3-dev libtbb-dev \
libavformat-dev libavcodec-dev libavdevice-dev libavutil-dev libswscale-dev \
libavresample-dev ffmpeg libav-tools x264 x265 libportaudio2 portaudio19-dev \
libboost-dev libboost-python-dev libgoogle-glog-dev libatlas-base-dev libeigen3-dev libsuitesparse-dev libopencv-dev \
libceres1 libceres-dev autoconf automake libtool

#install fresh version of pip (pip3)
curl -sS https://bootstrap.pypa.io/get-pip.py | python3


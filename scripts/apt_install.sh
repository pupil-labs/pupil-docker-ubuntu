#!/bin/sh
echo "updating apt-get"
apt-get -yq update
apt-get install -yq software-properties-common
echo "adding apt sources"
add-apt-repository -y ppa:bzindovic/suitesparse-bugfix-1319687
add-apt-repository -y ppa:jonathonf/ffmpeg-3
echo "updating apt-get for new sources"
apt-get -yq update  
echo "installing apt packages"
apt-get install -yq --no-install-recommends \
pkg-config git cmake build-essential nasm wget python3-setuptools \
libusb-1.0-0-dev python3-dev python3-pip python3-numpy python3-scipy libglew-dev libglfw3-dev libtbb-dev \
libavformat-dev libavcodec-dev libavdevice-dev libavutil-dev libswscale-dev \
libavresample-dev ffmpeg libav-tools x264 x265 libportaudio2 portaudio19-dev \
libboost-dev libboost-python-dev libgoogle-glog-dev libatlas-base-dev libeigen3-dev libsuitesparse-dev
# save space and clean up apt after install
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
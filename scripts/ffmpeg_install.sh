#!/bin/bash -e

add-apt-repository -y ppa:jonathonf/ffmpeg-3
apt-get update
apt -yq install libavformat-dev libavcodec-dev libavdevice-dev libavutil-dev \
    libswscale-dev libavresample-dev ffmpeg libav-tools x264 x265 libportaudio2 portaudio19-dev




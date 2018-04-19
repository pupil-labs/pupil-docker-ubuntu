#!/bin/sh
apt-get install -y autoconf automake libtool nasm

#cd /root
#wget -O libjpeg-turbo.tar.gz https://sourceforge.net/projects/libjpeg-turbo/files/1.5.1/libjpeg-turbo-1.5.1.tar.gz/download
#tar xvzf libjpeg-turbo.tar.gz
#cd libjpeg-turbo-1.5.1
#./configure --enable-static=no --prefix=/usr/local
#make install
#ldconfig  
#cd /root && rm -rf libjpeg-turbo-1.5.1 && rm -rf libjpeg-turbo.tar.gz

JPEG_TURBO_VERSION=1.5.1 && \
wget -q -O - https://github.com/libjpeg-turbo/libjpeg-turbo/archive/${JPEG_TURBO_VERSION}.tar.gz | tar -xzf - && \
cd libjpeg-turbo-${JPEG_TURBO_VERSION} && \
autoreconf -fiv && \
./configure --enable-static=no --prefix=/usr/local  --enable-shared   && \
make  install  && ldconfig &&  \
rm -rf libjpeg-turbo-${JPEG_TURBO_VERSION}


#!/bin/sh
cd /root
wget -O libjpeg-turbo.tar.gz https://sourceforge.net/projects/libjpeg-turbo/files/1.5.1/libjpeg-turbo-1.5.1.tar.gz/download
tar xvzf libjpeg-turbo.tar.gz
cd libjpeg-turbo-1.5.1
./configure --enable-static=no --prefix=/usr/local
make install
ldconfig  
cd /root && rm -rf libjpeg-turbo-1.5.1
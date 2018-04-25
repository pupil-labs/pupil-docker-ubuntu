#!/bin/bash -e

JPEG_TURBO_VERSION=1.5.1 && \
wget -q -O - https://github.com/libjpeg-turbo/libjpeg-turbo/archive/${JPEG_TURBO_VERSION}.tar.gz | tar -xzf - && \
cd libjpeg-turbo-${JPEG_TURBO_VERSION} && \
autoreconf -fiv && \
./configure --prefix=/usr/local  --enable-shared   && \
make -j"$(nproc)" install  && ldconfig &&  \
rm -rf libjpeg-turbo-${JPEG_TURBO_VERSION}

echo "deleting static library link to make next compilations OK"
rm -f /usr/lib/gcc/x86_64-linux-gnu/5/../../../x86_64-linux-gnu/libturbojpeg.a



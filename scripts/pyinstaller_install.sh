#!/bin/bash -e

cd /root
git clone --depth=1 https://github.com/pupil-labs/pyinstaller.git
cd pyinstaller/bootloader
python ./waf distclean all
cd ..
python setup.py install
cd /root && rm -rf pyinstaller

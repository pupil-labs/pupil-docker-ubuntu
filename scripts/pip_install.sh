#!/bin/sh
pip3 install --upgrade pip
pip3 install cython
pip3 install opencv-python
cat requirements.txt | xargs pip3 install
# cleanup pip install dir according to pip instructions in readme
rm -rf /root/src
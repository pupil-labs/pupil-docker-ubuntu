#!/bin/sh
pip3 install --upgrade pip
pip3 install cython
cat requirements.txt | xargs pip3 install
# cleanup pip install dir according to pip instructions in readme
rm -rf /root/src
#!/bin/sh
pip3 install --upgrade pip
pip3 install cython
cat requirements.txt | xargs pip3 install

#!/bin/bash -e

cat requirements.txt | xargs pip3 install

# cleanup pip install dir according to pip instructions in readme
rm -rf /root/src

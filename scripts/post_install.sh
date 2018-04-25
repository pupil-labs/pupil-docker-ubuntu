#!/bin/bash -e

# save space and clean up apt after install
echo -e "\n##########\nCleaning up apt after install to reduce image size\n##########\n"
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


# avoiding errors during bundle build
# error, /usr/bin/ld: cannot find -lboost_python3
# https://github.com/BVLC/caffe/issues/6063
ln -s /usr/lib/x86_64-linux-gnu/libboost_python-py35.so /usr/lib/x86_64-linux-gnu/libboost_python-py36.so

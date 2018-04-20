#!/bin/bash -e

# save space and clean up apt after install
echo -e "\n##########\nCleaning up apt after install to reduce image size\n##########\n"
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# strictly after all
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1



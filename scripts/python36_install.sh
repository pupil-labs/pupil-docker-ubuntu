#!/bin/bash -e


add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
apt-get install -yq python3.6 python3.6-dev libpython3.6-dev

# set python3.6 as default python3 version
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1


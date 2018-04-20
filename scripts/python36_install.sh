#!/bin/bash -e

apt-get update
apt-get install -yq software-properties-common python-software-properties
add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
apt-get install -yq python3.6 python3.6-dev libpython3.6-dev



# strictly after all
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1





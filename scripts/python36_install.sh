#!/bin/bash -e

apt-get update
apt-get install -yq software-properties-common python-software-properties
add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
apt-get install -yq python3.6 python3.6-dev libpython3.6-dev





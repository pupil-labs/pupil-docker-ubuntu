#!/bin/bash -e

echo -e "\n##########\nUpdating apt-get\n##########\n"
apt-get -yq update

echo -e "\n##########\nInstalling PPA-repositoty manager\n##########\n"
apt-get install -yq software-properties-common python-software-properties

# a little trick to make add-apt-repository working correctly on ubuntu 16.04
# https://stackoverflow.com/questions/42386097/python-add-apt-repository-importerror-no-module-named-apt-pkg
conf_file="/usr/bin/add-apt-repository"
sed -i 's/python3$/python3.5/' $conf_file


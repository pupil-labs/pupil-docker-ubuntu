#!/bin/bash -e

# it is weird but
#  "cat requirements.txt | xargs pip3 install"    or "pip3 install -r requirements.txt"
#  dont works as expected
#  installing step by step

for i in `cat requirements.txt`; do
    pip3 install --upgrade "$i"
done


for i in `cat requirements2.txt`; do
    pip3 install -e "$i"
done




# cleanup pip install dir according to pip instructions in readme
rm -rf /root/src

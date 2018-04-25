#!/bin/bash -e

# it is weird but
#  "cat requirements.txt | xargs pip3 install"    or "pip3 install -r requirements.txt"
#  dont works as expected
#  installing step by step

for i in `cat requirements.txt`; do
    pip3 install "$i"
done



#!/bin/bash

## NOTES ##

# This script will add N substrate wallet private keys in raw format to keys.txt 
 
N=50

for A in {1..$N}; do subkey generate >> /tmp/keys.txt; done
cat /tmp/keys.txt | grep "Secret seed:"|sed 's/Secret seed://g'|tr -d ' ' >> keys.txt \
&& rm /tmp/keys.txt

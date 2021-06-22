#!/bin/bash

for I in `cat egg_id.txt`; do
    for J in `cat keys.txt`; do
    node index.js \
    --id $I \
    -e ws://kusama-rpc.polkadot.io \
    -s $J \
    --emotes 🐣 ; done \
done


######### NOTES #########
# egg_id.txt contains egg id, 1 per line
# keys.txt contains KSM acct private keys, 1 per line
# you must import and fund each wallet manually on polkadot.js.org/apps

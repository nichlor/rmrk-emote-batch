#!/bin/bash

for I in `cat egg_id.txt`; do \
    for J in `cat key.txt`; do node index.js \ 
    --id $I \
    -e ws://localhost:9944 \
    -s $J \
    --emotes 🐣 ; done \
done


######### NOTES #########
# savetheeggs.txt contains egg id, 1 per line
# hatchkey.txt contains KSM acct private keys, 1 per line
# you must import and fund each wallet manually on polkadot.js.org/apps
# index.js script from https://github.com/martinloesethjensen/rmrk-emote-batch

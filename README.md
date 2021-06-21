# rmrk-emote-script

If you are looking for a script to create multiple addresses and emote specific emotes, then I would like to refer to the [kanaria-hatchery](https://github.com/kianenigma/kanaria-hatchery) script by [kianenigma](https://github.com/kianenigma).

This script is heavily inspired by the above mentioned script, so please have a look a that script as well and give it a :star:.

The way this script differs is that it sends 1700+ emojis in **one batch call** to be executed on the node.

⚠️ **_PLEASE BE AWARE THAT RUNNING THE SCRIPT WITH ALL 1700+ EMOTES WILL BE ROUGHLY ~0.05 KSM_**

⚠️ **_PLEASE BE DON'T RUN THIS ON A HATCHING EGG_**

An example of the [extrinsic after running the script will look like this](https://kusama.subscan.io/extrinsic/0x77e1baf6e368644c60b6b3ffade989ff4298b76259e8e8a2edd29e6c7bed914f)  

🌱 Please support me if you'd like 😊

[KSM Address](https://kusama.subscan.io/account/HtSKUKWRPCxCtzsnNfdbN1NN5uVq4yMizb2FqeHSC3YoRTi): 

```text
HtSKUKWRPCxCtzsnNfdbN1NN5uVq4yMizb2FqeHSC3YoRTi
```

## Getting started

First have [polkadot js api installed](https://polkadot.js.org/docs/api/start/install).

Clone repo and install npm packages.

```sh
git clone https://github.com/martinloesethjensen/rmrk-emote-batch
cd rmrk-emote-batch
npm install
```

## How to run

Specify rpc endpoint, egg id and seed phrase in the command.

I would first test on Westend before trying it out on kusama. But try in small batches of emotes as you might not have enough westies.   

[Westend faucet info here.](https://wiki.polkadot.network/docs/en/maintain-networks#westend-faucet)

```sh
# Sending all emotes (roughly ~0.05 KSM)
node index.js --id <RMRK_ID> -e wss://kusama-rpc.polkadot.io -s "<SEED_PHRASE>"

# Sending specific emotee
# Specified emotes need to be space separated.
node index.js --id <RMRK_ID> -e wss://kusama-rpc.polkadot.io -s "<SEED_PHRASE>" --emotes 🚀 🎉

# Removing specific emotes from complete list of emotes
# Specified emotes need to be space separated.
node index.js --id <RMRK_ID> -e wss://kusama-rpc.polkadot.io -s "<SEED_PHRASE>" -r 🤩 🥳
```

ℹ️ Please note that the [`emojis` list in index.js](index.js) contains many emoji unicodes. So if you want to emote with less emojis then just remove some from the list before running it. It is also possible to specify a specific list of emojis by using the command: `--emotes` and providing a space sperated list of emotjis.

You can find [emoji unicodes here](https://unicode.org/emoji/charts/full-emoji-list.html) and [here](./emoji-unicodes.txt).

## The following scripts enable emoting multiple RMRK NFTs, but requires some manual funding and importing of the accounts into GUI. These are not necessary for normal function of rmrk-emote-batch.

## Emote Bomb Script - emote_bomb.sh
 - egg_id.txt contains egg id, 1 per line
 - Example: 
```txt
6802213-24d573f4dfa1d7fd33-KAN-KANS-0000000000000001
6802213-24d573f4dfa1d7fd33-KAN-KANF-0000000000000010
6802639-24d573f4dfa1d7fd33-KAN-KANL-0000000000006514
```
 - keys.txt contains KSM acct private keys, 1 per line (keygen.sh will create these)
 - you must import and fund each wallet manually on polkadot.js.org/apps
 - Run with:
```sh
bash emote_bomb.sh
```

## keygen.sh
- To change the number of wallets generated, edit keygen.sh and change the value of N
- By default, N=50
- Run with:
```sh
bash keygen.sh
```



## Commands

```txt
Options:
      --help      Show help                                            [boolean]
      --version   Show version number                                  [boolean]
      --id        The id of your target egg                  [string] [required]
  -e, --endpoint  The wss endpoint. [Westend = wss://westend-rpc.polkadot.io]
                  [Kusama = wss://kusama-rpc.polkadot.io]    [string] [required]
  -s, --seed      Your mnemonic seed. It is not saved anywhere.
                                                             [string] [required]
      --emotes    array of emojis, space separated                       [array]
  -r, --remove    array of emojis to remove from the list, space separated
                                                                         [array]
```

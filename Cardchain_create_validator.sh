#!/bin/bash -i

echo -n "Enter your validator name: "
read NODE_MONIKER
CHAIN_ID=cardtestnet-5

echo "Create Validator..."
Cardchain tx staking create-validator \
  --from=validator \
  --amount=1000000ubpf \
  --moniker=$NODE_MONIKER \
  --chain-id=$CHAIN_ID \
  --commission-rate=0.1 \
  --commission-max-rate=0.5 \
  --commission-max-change-rate=0.1 \
  --min-self-delegation=1 \
  --pubkey=$(Cardchain tendermint show-validator) \
  --details="" \
  --yes

#!/bin/sh
cd contracts

if [ ! -d "pancake-swap-lib" ]; then
  git clone https://github.com/pancakeswap/pancake-swap-lib.git
fi

solc @pancakeswap/pancake-swap-lib/=./pancake-swap-lib/ --bin --abi --optimize --overwrite -o ./abibin MasterChef.sol






















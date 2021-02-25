#!/bin/sh
cd contracts
git clone https://github.com/pancakeswap/pancake-swap-lib.git
solc @pancakeswap/pancake-swap-lib/=./pancake-swap-lib/ --bin --abi --optimize -o ./abibin MasterChef.sol






















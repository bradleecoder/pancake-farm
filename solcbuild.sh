#!/bin/sh
cd contracts

if [ ! -d "pancake-swap-lib" ]; then
  git clone https://github.com/pancakeswap/pancake-swap-lib.git
fi

solc @pancakeswap/pancake-swap-lib/=./pancake-swap-lib/ --bin --abi --optimize --overwrite -o ./abibin MasterChef.sol

abigen --sol=MasterChef.sol --solc='solc @pancakeswap/pancake-swap-lib/=./pancake-swap-lib/' --pkg=pancakeswap --out=MasterChef.go

abigen @pancakeswap/pancake-swap-lib/=./pancake-swap-lib/ --sol=MasterChef.sol --pkg=pancakeswap --out=MasterChef.go

solc @pancakeswap/pancake-swap-lib/=./pancake-swap-lib/ --bin --abi --optimize --overwrite -o ./abibin MasterChef.sol | abigen --pkg=pancakeswap --out=MasterChef.go




















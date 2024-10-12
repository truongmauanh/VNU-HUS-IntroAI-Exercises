#!/bin/bash

sudo apt update
sudo apt install -y swi-prolog gprolog 
sudo apt clean
git clone https://github.com/eprover/eprover.git
cd eprover
./configure --bindir=/usr/bin
make
sudo make install
cd ..
rm -rf eprover

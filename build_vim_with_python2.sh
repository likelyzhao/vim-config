#!/bin/bash
apt remove vim vim-runtime gvim -y
apt update && apt install libncurses5-dev -y
git clone https://github.com/vim/vim.git 
cd vim

make distclean 
./configure --with-features=huge \
            --enable-multibyte \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-perlinterp=yes \
            --enable-cscope \
            --prefix=/usr/local
make && make install

#!/bin/bash

apt remove vim vim-runtime gvim -y
apt update && apt install libncurses5-dev
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

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ..
cp ./vimrc ~/.vimrc
ln ~/.vimrc ~/.vim/vimrc
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install.py

echo "https://github.com/j1z0/dotfiles.git"


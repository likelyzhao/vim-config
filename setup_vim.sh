#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./vimrc ~/.vimrc
ln ~/.vimrc ~/.vim/vimrc
vim +PluginInstall +qall

#cd ~/.vim/bundle/YouCompleteMe
#./install.py

echo "https://github.com/j1z0/dotfiles.git"


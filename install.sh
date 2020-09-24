#!/bin/bash
# title: envirionment setup
# date: 2020/09/23

ln bashrc ~/.bashrc
ln vimrc  ~/.vimrc

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install colors
cp -r colors ~/.vim/

# coc-setting 
ln coc-settings.json ~/.vim/


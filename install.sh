#!/bin/bash
# title: envirionment setup

SCRIPT_PATH=`dirname "$0"`

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install colors
cp -r ${SCRIPT_PATH}/colors ~/.vim/

ln ${SCRIPT_PATH}/bashrc ~/.bashrc
ln ${SCRIPT_PATH}/vimrc  ~/.vimrc

# coc-setting 
ln ${SCRIPT_PATH}/coc-settings.json ~/.vim/


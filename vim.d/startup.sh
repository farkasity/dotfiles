#!/usr/bin/env bash

if [ ! -e ~/.vim.d/autoload/plug.vim ] ; then
    curl -fLo ~/.vim.d/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim +PlugInstall +qall

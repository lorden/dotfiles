#!/usr/bin/env bash
cp .vimrc ~/.vimrc
cp -r .vim/* ~/.vim
vim +BundleInstall +qall

#!/usr/bin/env bash
VUNDLE_DIR=$HOME/.vim/bundle/vundle
if [ ! -d "$VUNDLE_DIR" ]; then
    git clone https://github.com/gmarik/vundle.git $VUNDLE_DIR
fi
cp ~/.vimrc ~/.vimrc.bkp
cp .vimrc ~/.vimrc
cp -r .vim/* ~/.vim
vim +BundleInstall +qall

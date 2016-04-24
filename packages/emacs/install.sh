#!/bin/zsh
DIR="$HOME/src/osx-setup/packages/emacs"
SRC="$HOME/src/osx-setup"

[ -d $HOME/.emacs.d ] &&
    mkdir -p $HOME/.trash/.emacs.d &&
    rsync -a $HOME/.emacs.d $HOME/.trash/.emacs.d &&
    rm -rf $HOME/.emacs.d
mkdir -p $SRC
[ ! -d $SRC ] &&
    git clone https://github.com/takuma-saito/osx-setup $SRC || { cd $SRC && git pull }
cp -a $SRC/packages/emacs $HOME/.emacs.d &&
    cd $HOME/.emacs.d &&
    cask install --verbose
ln -sfn $HOME/.emacs.d/init.el $HOME/.emacs.el

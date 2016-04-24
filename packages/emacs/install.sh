#!/bin/zsh
DIR="$HOME/src/osx-setup/packages/emacs"
SRC="$HOME/src/osx-setup"

[ -d $HOME/.emacs.d ] &&
    mkdir -p $HOME/.trash/.emacs.d &&
    rsync -a $HOME/.emacs.d $HOME/.trash/ &&
    rm -rf $HOME/.emacs.d
mkdir -p $SRC
rm -rf $HOME/src/osx-setup &&
    git clone https://github.com/takuma-saito/osx-setup $SRC &&
    cp -a $SRC/packages/emacs $HOME/.emacs.d
cd $HOME/.emacs.d && cask install --verbose
ln -sfn $HOME/.emacs.d/emacs-init.el $HOME/.emacs.el

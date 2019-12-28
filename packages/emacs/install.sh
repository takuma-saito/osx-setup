#!/bin/zsh -xe
SRC="../.."

cp -a $SRC/packages/emacs/ $HOME/.emacs.d
cd $HOME/.emacs.d && cask install --verbose
rm -f ~/.emacs.el
ln -sfn $HOME/.emacs.d/init.el $HOME/.emacs.el
ln -sfn $(brew --prefix)/opt/cask ~/.emacs.d/.cask/main # brew 前提

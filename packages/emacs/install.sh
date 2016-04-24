#!/bin/bash
mv -f ~/.emacs.d ~/.trash
git clone https://github.com/takuma-saito/dot-emacs ~/.emacs.d && cd ~/.emacs.d && cask install --verbose
ln -sfn $HOME/.emacs.d/emacs-init.el $HOME/.emacs.el

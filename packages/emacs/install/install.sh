#!/bin/bash
mv -f ~/.emacs.d ~/.trash
git clone https://github.com/takuma-saito/dot-emacs ~/.emacs.d
ln -sfn $HOME/.emacs.d/emacs-init.el $HOME/.emacs.el

#!/bin/zsh
SRC="$HOME/src/osx-setup"

[ ! -d $SRC ] && {    
    mkdir -p $SRC
    git clone https://github.com/takuma-saito/osx-setup $SRC
} || {
    cd $SRC && git pull
}

[ -d ~/.zsh_user ] && rm ~/.zsh_user
[ -d ~/.zsh ] && rm ~/.zsh

ln -sfn $SRC/packages/zsh/zsh ~/.zsh
ln -sfn $SRC/packages/zsh/zsh_user ~/.zsh_user
ln -sfn $SRC/packages/zsh/zshrc ~/.zshrc

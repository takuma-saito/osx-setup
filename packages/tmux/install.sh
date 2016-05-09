#!/bin/zsh
SRC="$HOME/src/osx-setup"

[ ! -d $SRC ] && {    
    mkdir -p $SRC
    git clone git@github.com/takuma-saito/osx-setup $SRC
} || {
    cd $SRC && git pull
}

[ -d ~/.tmux-session ] && rm ~/.tmux-session

ln -sfn $SRC/packages/tmux/tmux.conf ~/.tmux.conf
ln -sfn $SRC/packages/tmux/tmux-session ~/.tmux-session

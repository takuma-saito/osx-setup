#!/bin/zsh
DIR="$HOME/src/osx-setup/packages/emacs"
SRC="$HOME/src/osx-setup"
CLEAN=

while getopts c OPT
do
    case $OPT in
        c) CLEAN=true
           ;;
    esac
done

function cask_install() {    
    cd $HOME/.emacs.d && cask install --verbose
}

[[ $CLEAN || ! -d $SRC ]] && {
    [ -d $HOME/.emacs.d ] && {
	mkdir -p $HOME/.trash/.emacs.d &&
            rsync -a $HOME/.emacs.d $HOME/.trash/.emacs.d &&
            rm -rf $HOME/.emacs.d
    }
}

[ ! -d $SRC ] && {    
    mkdir -p $SRC
    git clone https://github.com/takuma-saito/osx-setup $SRC
} || {
    cd $SRC && git pull
}

[ -d $HOME/.emacs.d ] && cask_install || {
    cp -a $SRC/packages/emacs/ $HOME/.emacs.d && cask_install
}
ln -sfn $HOME/.emacs.d/init.el $HOME/.emacs.el
ln -sfn $(brew --prefix)/opt/cask ~/.emacs.d/.cask/main # brew 前提

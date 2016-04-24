#!/bin/bash
SRC="$HOME/src/osx-setup"

[ ! -d $SRC ] && {    
    mkdir -p $SRC
    git clone https://github.com/takuma-saito/osx-setup $SRC
} || {
    cd $SRC && git pull
}

brew update
brew tap sanemat/font
brew tap caskroom/cask

cat $SRC/packages/brew/brew-list.txt | xargs -I{} brew install -v {}
cat $SRC/packages/brew/brew-cask-list.txt | xargs -I{} brew cask install -v --appdir=/Applications {}

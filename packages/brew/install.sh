#!/bin/bash
SRC="$HOME/src/osx-setup"

[ ! -d $SRC ] && {    
    mkdir -p $SRC
    git clone git+ssh://git@github.com/takuma-saito/osx-setup $SRC
} || {
    cd $SRC && git pull
}

brew tap sanemat/font
brew tap caskroom/cask
brew update -v
brew cask update -v

cat $SRC/packages/brew/brew-list.txt | xargs -I{} brew install -v {}
cat $SRC/packages/brew/brew-cask-list.txt | xargs -I{} brew cask install --verbose --appdir=/Applications {}

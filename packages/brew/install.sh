#!/bin/bash -xe
SRC="$HOME/src/osx-setup"

[ ! -d $SRC ] && {    
    mkdir -p $SRC
    git clone git@github.com/takuma-saito/osx-setup $SRC
} || {
    cd $SRC && git pull
}

# brew のインストール                                                                              
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap sanemat/font
brew tap caskroom/cask
brew tap caskroom/versions
brew tap buo/cask-upgrade
brew update --verbose
brew cask update --verbose

cat $SRC/packages/brew/brew-list.txt | xargs -I{} brew install --verbose {}
cat $SRC/packages/brew/brew-cask-list.txt | xargs -I{} brew cask install --verbose --appdir=/Applications {}
brew install http://git.io/sshpass.rb

# install ricty
cp -f /usr/local/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

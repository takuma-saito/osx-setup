#!/bin/bash -xe
# brew のインストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap sanemat/font
brew tap caskroom/cask
brew tap caskroom/versions
brew tap buo/cask-upgrade
brew update --verbose

export HOMEBREW_NO_AUTO_UPDATE=1
brew install --force --verbose $(cat ./packages/brew/brew-list.txt)
brew cask install --verbose --appdir=/Applications --force $(cat ./packages/brew/brew-cask-list.txt)
brew install http://git.io/sshpass.rb
brew install scala

# install ricty
cp -f /usr/local/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

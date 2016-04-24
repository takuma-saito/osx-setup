#!/bin/bash

CONF='../config'

brew update
brew tap sanemat/font
brew tap caskroom/cask

cat brew-list.txt | xargs -I{} brew install -v {}
cat brew-cask-list.txt | xargs -I{} brew cask install -v --appdir=/Applications {}

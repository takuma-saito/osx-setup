#!/bin/bash

# java のインストール
java -version

# xcode のインストール ( gcc が必要なため )
xcode-select --install

# brew のインストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

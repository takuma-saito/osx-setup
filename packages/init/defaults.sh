#!/bin/zsh

# 隠しファイルを可視化
defaults write com.apple.finder AppleShowAllFiles true

killall Finder

# 拡張子を表示させる
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# ドックを右に変更する
defaults write com.apple.dock orientation -string "right"

# ドックを隠す
defaults write com.apple.dock autohide -bool true

killall Dock

# keyRepeat を最小にする
defaults write NSGlobalDomain KeyRepeat -int 1

# 副ボタンを右下の隅でクリックにする
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick 2

# スクリーンを閉じたらパスワードを聞く
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

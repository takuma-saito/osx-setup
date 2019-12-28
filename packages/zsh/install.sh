#!/bin/zsh -xe
SRC="../.."

[ -d ~/.zsh_user ] && rm ~/.zsh_user
[ -d ~/.zsh ] && rm ~/.zsh

cp -a $SRC/packages/zsh/zsh ~/.zsh
cp -a $SRC/packages/zsh/zsh_user ~/.zsh_user
cp $SRC/packages/zsh/zshrc ~/.zshrc
chsh -s /bin/zsh

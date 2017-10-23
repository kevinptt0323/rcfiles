#!/bin/sh
DIR=rcfiles
cd $HOME
git clone https://github.com/robbyrussell/oh-my-zsh .oh-my-zsh
ln -s $DIR/.gitconfig .
ln -s $DIR/.tmux.conf .
ln -s $DIR/.zshrc-omg .zshrc

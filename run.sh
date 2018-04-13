#!/bin/sh
RC_DIR=$HOME/rcfiles
cd $HOME
git clone https://github.com/robbyrussell/oh-my-zsh .oh-my-zsh
ln -s $RC_DIR/.gitconfig .
ln -s $RC_DIR/.tmux.conf .
ln -s $RC_DIR/.zshrc-omg .zshrc

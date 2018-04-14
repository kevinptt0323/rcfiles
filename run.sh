#!/bin/sh
cd $(dirname $0)
RC_DIR=$PWD
cd $HOME
git clone https://github.com/robbyrussell/oh-my-zsh .oh-my-zsh
ln -s $RC_DIR/.gitconfig .
ln -s $RC_DIR/tmux.conf .tmux.conf
mv .zshrc .zshrc-bak

cat <<EOT > .zshrc
RC_DIR=$RC_DIR
source \$RC_DIR/zshrc.sh
EOT

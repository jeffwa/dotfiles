#!/bin/sh

echo "Linking configs..."

for f in .gitignore_global .mackup.cfg .p10k.zsh .tmux.conf .tmuxinator .vim .vimrc .zshrc
do
    rm -rf $HOME/$f
    ln -s $HOME/.dotfiles/$f $HOME/$f
done

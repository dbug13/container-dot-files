#!/bin/bash

mkdir -p $HOME/.backups

# Check if .bashrc exists and move if so
if [ -f "$HOME/.bashrc" ]; then
  mv "$HOME/.bashrc" "$HOME/.backups/"
fi

# Check if .bash_profile exists and move if so
if [ -f "$HOME/.bash_profile" ]; then
  mv "$HOME/.bash_profile" "$HOME/.backups/"
fi

ln -s $PWD/.bashrc ~/.bashrc
ln -s $PWD/.bashrc ~/.bash_profile

mkdir -p ~/.config
ln -s $PWD/.config/nvim/ ~/.config/nvim

mkdir -p ~/.local
ln -s $PWD/.local/scripts/ ~/.local/scripts

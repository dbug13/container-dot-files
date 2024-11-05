#!/bin/bash

BACKUPS="$HOME/backups"
mkdir -p $BACKUPS

move_file() {
  if [ -f "$1" ]; then
    mv "$1" "$2"
  fi
}

sym_link() {
  if [ -f "$1" ]; then
    mkdir -p $(dirname "$2")
    ln -s "$1" "$2"
  fi
}

# handle top level files
move_file "$HOME/.bashrc" "${BACKUPS}/"
move_file "$HOME/.bash_profile" "${BACKUPS}/"

sym_link $PWD/.bashrc $HOME/.bashrc
sym_link $PWD/.bashrc $HOME/.bash_profile

# handle .config files
mkdir -p ~/.config
mkdir -p "${BACKUPS}/.config"

move_file $HOME/.config/nvim "${BACKUPS}/.config/"
sym_link $PWD/.config/nvim $HOME/.config/nvim

# handle .local files
mkdir -p ~/.local
mkdir -p "${BACKUPS}/.local"

sym_link $PWD/.local/scripts $HOME/.local/scripts

#!/bin/bash

curl https://mise.run | sh

echo "Added mise config to $HOME/.bashrc"
echo "eval \"\$(/home/$USER/.local/bin/mise activate bash)\"" >>$HOME/.bashrc

echo "remember to source the .bashrc file to activate up mise install"

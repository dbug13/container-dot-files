#!/bin/bash

export PS1="[\u@\h \w]\n$ "

alias ls='ls --color -F'
alias ll='ls --color -lFh'
alias la='ls --color -lAFh'

export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/scripts:$PATH

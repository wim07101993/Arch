#!/bin/bash

# Disable ctrl-s and ctrl-q
stty -ixon
# allow to cd into directory by merely typing the directory name.
shopt -s autocd

# Load shortcuts and aliases
[ -f "$HOME/.shortcuts" ] && source "$HOME/.shortcuts"
[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

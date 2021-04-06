#!/bin/bash

source $HOME/source/repos/arch/.profile
source $HOME/source/repos/arch/.colorsrc

# Check the window size after each command, and update LINES and COLUMNS if the size changed.
shopt -s checkwinsize
# Append history instead of overwriting
shopt -s histappend
# CD into dir by only typing the name
shopt -s autocd

shopt -s expand_aliases

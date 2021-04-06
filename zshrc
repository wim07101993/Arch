#!/bin/bash

echo "Settings wim's profile"

export PATH="$PATH:$(du "$HOME/source/repos/arch/Scripts/" | cut -f2 | tr '\n' ':')"
export EDITOR=/usr/bin/vim

[[ $- != *i* ]] && return

# Change the window title of X terminals
case ${TERM} in
	xter*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
		;;
	screen*)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
		;;
esac

source $HOME/source/repos/arch/.colorsrc
source $HOME/source/repos/arch/.aliasrc

# Check the window size after each command, and update LINES and COLUMNS if the size changed.
shopt -s checkwinsize
# Append history instead of overwriting
shopt -s histappend
# CD into dir by only typing the name
shopt -s autocd

shopt -s expand_aliases

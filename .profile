#!/bin/bash
# Profile file. Runs on login

# Adds `~/scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/Scripts/" | cut -f2 | tr '\n' ':')"
export EDITOR="nvim"
export FILE="ranger"

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'	# begin bold
export LESS_TERMCAP_md=$'\E[1;36m'	# begin blink
export LESS_TERMCAP_me=$'\E[0m'		# reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m'	# begin reverse video
export LESS_TERMCAP_se=$'\E[0m'		# reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'	# begin underline
export LESS_TERMCAP_ue=$'\E[0m'		# reset underline

[ ! -f ~/.shortcuts ] && shortcuts >/dev/null 2>&1

echo $0 | grep "bash$" >/dev/null && [ -f ~/.bashrc ] && source "$HOME/.bashrc"

# Start graphical server if i3 not already running.
#[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null & exec startx


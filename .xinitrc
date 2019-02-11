# !/bin/bash

[ -f ~/.Xmodmap ] && ~/.Xmodmap
[ -f ~/.Xresources ] && ~/.Xresources

export TERMINAL="st"

exec i3

#
# ~/.bashrc
#

# if not interactive => return
[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# set terminal colors
[[ -f "$HOME/Scripts/.set_term_colors" ]] && source "$HOME/Scripts/.set_term_colors"

# set aliasses
[[ -f "$HOME/Scripts/.set_alias" ]] && source "$HOME/Scripts/.set_alias"

xhost +local:root > /dev/null 2>&1

complete -cf sudo

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

shopt -s expand_aliases

# export QT_SELECT=4

# Enable history appending instead of overwriting.  #139609
shopt -s histappend
# Enable to cd into dir by merely typing the name
shopt -s autocd


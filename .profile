export PATH="$PATH:$(du "$HOME/Scripts/" | cut -f2 | tr '\n' ':')"
export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/google-chrome-stable
#export USE_COLORS=true
export FILE=/usr/bin/ranger


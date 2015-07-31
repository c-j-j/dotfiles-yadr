set -o vi
export EDITOR=vim
export VISUAL=vim

bindkey '^P' up-history
bindkey '^N' down-history

alias vim="stty stop '' -ixoff ; vim"
# `Frozing' tty, so after any command terminal settings will be restored
ttyctl -f


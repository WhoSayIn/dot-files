ZSH=$HOME/.oh-my-zsh
ZSH_THEME='robbyrussell'
export EDITOR='vim'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Aliases
source $HOME/.aliases

# disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE='true'

plugins=(git github web-search kubectl vi-mode docker docker-compose gitignore sudo)

source $ZSH/oh-my-zsh.sh
export RPROMPT="[%D{%f/%m/%y} %@]"
export TERM=xterm-256color

# grep colors
export GREP_COLOR='00;38;5;226'
export PATH="/usr/local/sbin:$PATH"

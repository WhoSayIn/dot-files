ZSH=$HOME/.oh-my-zsh
ZSH_THEME='robbyrussell'
export EDITOR='vim'

# Aliases
source $HOME/.aliases

# disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE='true'

plugins=(git github symfony2 web-search autojump)

source $ZSH/oh-my-zsh.sh
export RPROMPT="[%D{%f/%m/%y}%@]"
export TERM=xterm-256color

# grep colors
export GREP_COLOR='00;38;5;226'

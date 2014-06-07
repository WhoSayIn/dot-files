ZSH=$HOME/.oh-my-zsh
ZSH_THEME='robbyrussell'
export EDITOR='vim'

# Aliases
# - General
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias c='clear'
alias h='history'
alias dl='cd ~/Downloads'
alias dcm='cd ~/Documents'
alias p='ps aux | grep'
alias -g L='| less'
function mkcd () { mkdir -p '$@' && eval cd "\'\$$#\'"; }

# - apt
alias ins='sudo apt-get install'
alias update='sudo apt-get update && sudo apt-get upgrade'

# - vim
alias vi='vim'
alias svi='sudo vim'

# - nginx
alias nre='sudo /usr/sbin/nginx -s reload'
alias nse='cd /etc/nginx/sites-enabled'

# - php
alias pre='sudo service php5-fpm restart'

# - tmux
alias tns='tmux new -s'
alias tls='tmux ls'
alias ta='tmux attach -t'

# - symfony2
alias sf='sudo php app/console'
alias sfrm='sudo php app/console router:match'

# - git
alias gupp='gup && gp'
alias gci='git commit -am'

# - edit config files
alias zshrc='sudo vi ~/.zshrc'
alias vimrc='sudo vi ~/.vimrc'
alias edhosts='sudo vi /etc/hosts'

# disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE='true'

plugins=(git github web-search autojump)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# 256 colors
export TERM=xterm-256color

# grep colors
export GREP_COLOR='00;38;5;226'

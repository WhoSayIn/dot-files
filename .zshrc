ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Aliases
# - General
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias c="clear"
alias p="pwd"
alias h="history"
alias dl="cd ~/Downloads"
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'
function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# - limango
alias lm="cd /home/whosayin/Code/limango"
alias fr="cd /home/whosayin/Code/limango/deployment_frontend"

# - Git
alias gpr="git pull --rebase;"

# - Apt
alias ins="sudo apt-get install"
alias update='sudo apt-get update && sudo apt-get upgrade'

# - Vim
alias svi="sudo vi"

# - Nginx
alias nginxreload='sudo /usr/sbin/nginx -s reload'
alias nginxtest='sudo /usr/sbin/nginx -t'

# disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

plugins=(git symfony2 web-search autojump github)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# 256 colors
export TERM=xterm-256color

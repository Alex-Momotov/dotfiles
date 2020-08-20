#############################################################################################
# Company specific vars
source ~/.bash_vars_company.sh

#############################################################################################
# Command line prompt
source ~/.sshrc

#############################################################################################
# Custom commands
source ~/.custom_commands.sh

#############################################################################################
# Alisses

# ssh
alias ssh='sshrc'

# terminal
function cd {
    builtin cd "$@" && ls -1
}
alias ls='ls -1'
alias t='tree'
alias q='source ranger'

# git
alias gf='git fetch'
alias gd='git diff'
alias gp='git pull'
alias gs='git status'
alias gb='git branch'
alias gl='git log'
alias gll='git log --pretty=oneline'
alias ga='git add -A'
alias gr='git reset'
alias gc='git checkout'
alias gt='git stash'
alias gm='git commit'

# forklift
alias ft='open . -a forklift'

# docker
alias db='docker build'
alias dr='docker run'
alias dc='docker container'
alias di='docker image'
alias ds='docker stats'
alias de='docker exec'
alias dv='docker volume'

# terraform
alias tfenv='GREP_OPTIONS="--color=never" tfenv'
alias tf='terraform'

# kubernetes
alias ku='kubectl'
alias kud='kubectl -n data'

#############################################################################################
# Env variables

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH="$PATH:/usr/libexec/"
export CLASSPATH="."

# Terminal
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Git
export GIT_ASKPASS=~/.github/gittoken.sh

#############################################################################################






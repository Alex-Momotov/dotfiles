#############################################################################################
# Company specific vars
source ~/.bash_vars_company

#############################################################################################
# Command line prompt
source ~/.sshrc

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
alias gd='git diff'
alias gp='git pull'
alias gs='git status'
alias gb='git branch'
alias gl='git log'
alias ga='git add -A'
alias gr='git reset'
alias gc='git checkout'
alias gt='git stash'
alias gm='git commit'

# forklift
alias ft='open . -a forklift'

# docker
alias dc='docker container'
alias di='docker image'
alias ds='docker stats'
alias de='docker exec'

#############################################################################################
# Env variables

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH="$PATH:/usr/libexec/"
export CLASSPATH="."

# Terminal
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

#############################################################################################






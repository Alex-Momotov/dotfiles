#############################################################################################
source ~/.sshrc						# Command line prompt
source ~/.custom_commands			# Custom commands
source ~/.bash_vars_company			# Company specific vars

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
alias watch='watch '	# Make watch work with aliases


# Brew
alias bs='brew services'


# forklift
alias ft='open . -a forklift'

# Python
#alias python='python3'
#alias pip='pip3'
alias pipenvs='echo ~/.local/share/virtualenvs/ ; ls ~/.local/share/virtualenvs/'

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

# docker
alias d='docker'
alias dc='docker container'
alias di='docker image'
alias dv='docker volume'

# terraform
alias tfenv='GREP_OPTIONS="--color=never" tfenv'
alias tf='terraform'

# kubernetes
alias k=kubectl
complete -F __start_kubectl k  # Allows alias to work with bash-completion
alias kc='k config get-contexts'
alias ku='k config use-context'

#############################################################################################
# Env variables

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export CLASSPATH="."

# Terminal
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Git
export GIT_ASKPASS=~/.github/gittoken.sh

#############################################################################################
# Code

# pyenv
eval "$(pyenv init -)"

# bash-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
source <(kubectl completion bash)

#############################################################################################






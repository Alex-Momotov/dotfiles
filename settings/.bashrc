############################################################################################
source ~/.sshrc						# Command line prompt
source ~/.custom_commands			# Custom commands
source ~/.company_vars				# Company specific vars

# Hide message about zsh being default shell
export BASH_SILENCE_DEPRECATION_WARNING=1

############################################################################################
# Alises

# ssh
alias ssh='sshrc'

# ranger
alias q='source ranger'

# terminal
function cd {
    builtin cd "$@" && ls -1
}
alias ls='ls -1'
alias t='tree'
alias watch='watch '	# Make watch work with aliases

# brew
alias bs='brew services'

# forklift
alias ft='open . -a forklift'

# yq
alias yq='yq -C read -'

# pipenv
alias pipenvs='echo ~/.local/share/virtualenvs/ ; ls ~/.local/share/virtualenvs/'

# pyenv
alias pyenvs='pyenv versions'

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
alias dr='docker run'
alias dc='docker container'
alias di='docker image'
alias dv='docker volume'

# terraform
alias tfenv='GREP_OPTIONS="--color=never" tfenv'
alias tf='terraform'

# kubernetes
alias k='kubectl'
alias kc='k config get-contexts'
alias kcu='k config use-context'
function kcn() {
	k config set-context --current --namespace=$1
}
alias kv='kubeval'

# helm
alias h='helm'

# kafkacat
alias kaf='kafkacat'

#############################################################################################
# Env variables

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 11`
export CLASSPATH="."

# Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec


# Terminal
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Git
export GIT_ASKPASS=~/.github/gittoken.sh

#############################################################################################
# Code

# pyenv
eval "$(pyenv init -)"

#############################################################################################
# Editors 
 export VISUAL=nano
 export EDITOR=nano





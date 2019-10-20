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
# Misc
source /usr/local/share/chruby/chruby.sh
chruby ruby-2.6.4
export OAS_PATH=/Users/omomotov/Documents/work_projects/nexmo-developer/_open_api/api_specs/

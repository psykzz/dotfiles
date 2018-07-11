# Above Path is to your oh-my-zsh installation.

ZSH_THEME="psykzz"
plugins=(aws git node brew python docker docker-compose osx virtualenv)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
source $ZSH/oh-my-zsh.sh
source ~/.aliases
[ ! -f ~/.secrets ] || source ~/.secrets

###### Custom stuff ######
# AWS configuration
export AWS_CONFIG_FILE="~/.aws/config"

# Default editor
export EDITOR=$(which code)


# NVM stuff
# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.
if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(whence -w __init_nvm)" = function ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')
  function __init_nvm() {
    for i in "${__node_commands[@]}"; do unalias $i; done
    . "$NVM_DIR"/nvm.sh
    unset __node_commands
    unset -f __init_nvm
  }
  for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi

# Ruby Stuff
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Java Home & setup
export JAVA_HOME="$(/usr/libexec/java_home)"
export MAVEN_OPTS="-Xmx2G -Xms2G -XX:MaxPermSize=512M -XX:ReservedCodeCacheSize=128m"
export PATH="/usr/local/sbin:$PATH"
export OAUTHLIB_INSECURE_TRANSPORT=1
export OAUTHLIB_RELAX_TOKEN_SCOPE=1
eval $(/usr/libexec/path_helper -s)

# Go stuff
export GOPATH=$HOME/Development/goaway
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOPATH/bin

# Above Path is to your oh-my-zsh installation.

ZSH_THEME="psykzz"
COMPLETION_WAITING_DOTS="true"
plugins=(aws git brew python docker docker-compose osx)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh
source ~/.aliases
[ -f ~/.secrets ] || source ~/.secrets

###### Custom stuff ######

export CDPATH=$CDPATH:~/Development

export AWS_CONFIG_FILE="~/.aws/config"

# NVM stuff
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# Ruby Stuff
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Java Home & setup
export JAVA_HOME="$(/usr/libexec/java_home)"

export MAVEN_OPTS="-Xmx2G -Xms2G -XX:MaxPermSize=512M -XX:ReservedCodeCacheSize=128m"
export PATH="/usr/local/sbin:$PATH"
export OAUTHLIB_INSECURE_TRANSPORT=1
export OAUTHLIB_RELAX_TOKEN_SCOPE=1

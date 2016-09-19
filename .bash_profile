# RUBY_V=ruby-2.2.3
RUBY_V=ruby-2.3.1
MERLIN_ENV=local

alias ..='cd ..'
alias ls='ls -G'
alias ll='ls -lah'
alias l.='ls -d .* -G'
alias mkdir='mkdir -pv'
alias vi='vim'
# alias v='vim'
alias cd1='cd ..'
alias cd2='cd ../..'
alias cd3='cd ../../..'
alias cd4='cd ../../../..'
alias cd5='cd ../../../../..'

#linux
if [[ `uname` == Linux ]]; then
    export LS1='--color=always'
#mac
elif [[ `uname` == Darwin* ]]; then
    export LS1='-G'
#win/cygwin/other
else
    export LS1='--color=auto'
fi
export LS2='-hF --time-style=long-iso'
alias l='ls $LS1 $LS2 -AB'

if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

if [ "$0" = "/bin/bash"  ]; then
      # do bash things
  
    if [ -f `brew --prefix`/etc/bash_completion.d/docker   ]; then
        . `brew --prefix`/etc/bash_completion.d/docker
    fi
fi

# ###################
#   PATHS
# ###################
export PHP_V="$(brew --prefix homebrew/php/php70)/bin"

export RUBY_GEMS_WEDO="$HOME/.rvm/gems/ruby-2.3.1@wedo/bin"


# Java7 for WCS 
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
# Set for Java 8
#export JAVA_HOME=$(/usr/libexec/java_home)
#  which is:  JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_73.jdk/Contents/Home

#export ZEND_TOOL_INCLUDE_PATH="$PHP_V/bin"
export PYTHON=/usr/local/bin/python
#export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
export PYTHONPATH="/usr/local/bin/python"
export REDISURL=redis://localhost:6379
#export PATH="$HOME/.node/bin:$PATH"
export REDIS_CACHE_URL=127.0.0.1:6379
export PGDATA=/usr/local/var/postgres

# /Users/rbrennan/.rvm/gems/ruby-2.3.0/bin'
 export RAILS_ENV=local
#export RAILS_ENV=test bin/guard
# export RAILS_ENV=development
#export RAILS_ENV=default

export REDIS_URL=redis://localhost:6379
export REDIS_CACHE_URL=redis://localhost:6379/2
export WEB_CONCURRENCY=4
export DB_NAME=wedo_dev
export DB_USERNAME=wedo_dev_user
export DB_PASSWORD=Adef374km
export RAILS_SERVE_STATIC_FILES=true
export QCAD_PATH=/Applications/QCAD.app/Contents/Resources/

## ATG Stuff
#export DYNAMO_HOME="$HOME/docker/atgweblogic/atg/home"
#export DYNAMO_ROOT="$HOME/docker/atgweblogic/atg"
export DYNAMO_HOME=/Users/rbrennan/docker/atgweblogic/atg/home 
export DYNAMO_ROOT=/Users/rbrennan/docker/atgweblogic/atg/

export NODE_ENV=development

export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"


##  ANT 
export ANT_HOME="/usr/local/bin/ant"
export PATH="$ANT_HOME/bin:$PATH"


## 
##    Main PATH 
## ###############
# export PATH="$RUBY_GEMS_WEDO:$HOME/.rvm/gems/$RUBY_V/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:$HOME/.rvm/gems/$RUBY_V@global/bin:$HOME/.rvm/rubies/$RUBY_V/bin:/opt/X11/bin:/usr/local/git/bin:$HOME/.rvm/bin:$HOME/.rbenv/bin:/usr/local/bin/npm:/usr/local/share/npm/bin:$HOME/.composer/vendor/bin:$PATH"

export PATH="$HOME/.rvm/gems/$RUBY_V/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:$HOME/.rvm/gems/$RUBY_V@global/bin:$HOME/.rvm/rubies/$RUBY_V/bin:/opt/X11/bin:/usr/local/git/bin:$HOME/.rvm/bin:/usr/local/bin/npm:/usr/local/share/npm/bin:$HOME/.composer/vendor/bin:/usr/local/bin/composer:$PATH"

# load avn
# [[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" 

# export PATH="/usr/local/bin:$PATH"
#source ~/.bashrc

# function aws_login(){
#     ssh -i ~/.ssh/aws-eu-april2012.pem ubuntu@$1
# }

fortune | cowsay | lolcat

#eval "$(docker-machine env default)"
#echo "Docker IP for machine: dev"
#docker-machine ip dev

source ~/.aliases.zsh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

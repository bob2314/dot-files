
MERLIN_ENV=local

alias ..='cd ..'
alias ls='ls -G'
alias ll='ls -lah'
alias l.='ls -d .* -G'
alias mkdir='mkdir -pv'
alias vi='vim'
alias v='vim'
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
export PHP_VERSION="php71"
export PHP_V="$(brew --prefix homebrew/php/$PHP_VERSION)/bin:$PATH"
# export PHP-FPM="usr/local/opt/php71/sbin/$PHP_VERSION-fpm"


# Java7 for WCS 
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home"


# Set for Java 8
# export JAVA_HOME=$(/usr/libexec/java_home)
#  which is:  JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_73.jdk/Contents/Home

export PYTHON="/usr/local/bin/python"
export PYTHONPATH="/usr/local/bin/python"
export PGDATA=/usr/local/var/postgres


# ###################
#   Rails & RUBY
# ###################
RUBY_V=ruby-2.3.1

# ###################
## ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

export RAILS_ENV=local
#export RAILS_ENV=test bin/guard
# export RAILS_ENV=development
#export RAILS_ENV=default
# export RUBY_GEMS_WEDO="$HOME/.rvm/gems/ruby-2.3.1@wedo/bin"
export RUBY_GEMS_WEDO="$HOME/.rvm/gems/$RUBY_V@wedo/bin"

## Redis
# ###################
export REDIS_URL=redis://localhost:6379
export REDIS_CACHE_URL=redis://localhost:6379/2
export REDISURL=redis://localhost:6379
export REDIS_CACHE_URL=127.0.0.1:6379

export WEB_CONCURRENCY=4
export DB_NAME=wedo_dev
export DB_USERNAME=wedo_dev_user
export DB_PASSWORD=Adef374km
export RAILS_SERVE_STATIC_FILES=true
export QCAD_PATH=/Applications/QCAD.app/Contents/Resources

## ATG Stuff
# ###################
export DYNAMO_HOME="$HOME/docker/atgweblogic/atg/home"
export DYNAMO_ROOT="$HOME/docker/atgweblogic/atg"
export NODE_PATH=/usr/local/lib/node_modules
export NODE_ENV=development

##  ANT 
# ###################
export ANT_HOME=/usr/local/bin/ant

##  Java Version Manager
# #######################
## $HOME/.jenv/bin


##  Variable Exports
# ###################
export JENV_ROOT=/usr/local/var/jenv

GEM_PATH="$HOME/.gem/ruby/$RUBY_V"
RUBY_GLOBAL="$HOME/.rvm/gems/$RUBY_V@global"
RUBY_23=/Users/rbrennan/.gem/ruby/2.3.0
YARN="$HOME/.yarn"
MYSQL_PATH=/usr/local/mysql
SQLITE=/usr/local/opt/sqlite
MAGICK_HOME="$HOME/ImageMagick-7.0.4-7"
DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"

# eval "$(jenv init -)"
# $HOME/.jenv/bin:$JENV_ROOT:/usr/local/var/jenv/shims


##  Main Path Variables
# ######################
# $RUBY_GEMS_WEDO:
export PATH="$PATH:`yarn global bin`"
export PATH="$HOME/.rvm/gems/$RUBY_V/bin:$HOME/.rvm/gems/$RUBY_V@global/bin:$GEM_PATH:$HOME/.rvm/rubies/$RUBY_V/bin:#{RUBY_23}/bin:#{RUBY_GLOBAL}/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:#{MAGICK_HOME}/bin:#{YARN}/bin:$HOME/.rvm/bin:#{DYLD_LIBRARY_PATH}:$NODE_PATH:$JAVA_HOME:$DYNAMO_HOME:$DYNAMO_ROOT:#{MYSQL_PATH}/bin:#{GEM_PATH}:/usr/local/apache-cxf/bin:#{SQLITE}/bin:$PATH"

##  Docker
# ###################
#eval "$(docker-machine env default)"
#echo "Docker IP for machine: default"
# in your zsh profile somewhere
# eval "$(docker-machine env default)"
# export DOCKER_STATUS=$(env | grep DOCKER_HOST)
export MACHINE_STATUS=$(docker-machine status)
echo "Docker is: " $MACHINE_STATUS
# echo "Docker IP: " $DOCKER_STATUS 


# [ ! -z "$MACHINE_STATUS" ] && echo MACHINE_STATUS || $(docker-machine start default)
# [ ! -z "$DOCKER_STATUS" ] && echo $DOCKER_STATUS || echo "Empty"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

fortune | cowsay | lolcat


##    Load other Startup Items
# ##############################

#source ~/.bashrc
source ~/.profile


##    Groovy Config(s)
# ######################
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/rbrennan/.sdkman"
[[ -s "/Users/rbrennan/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/rbrennan/.sdkman/bin/sdkman-init.sh"
## or
#export GROOVY_HOME=/usr/local/opt/groovy/libexec

source ~/.aliases.zsh

# docker-start()



# Functions
# ~~~~~~~~~~~~~~
docker-ip() {
        docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 
}

# .bash_profile 
# Custom Command Prompt
export MERLIN_ENV=local
export PYTHON=/usr/local/bin/python
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

open_red_escape="\033[31m"
open_blue_escape="\033[34m"
open_green_escape="\033[32m"
close_escape="^\033[0m"

alias ll="ls -alh"

#echo -e "${open_blue_escape}+--------------------------------------------"
#echo -e "${open_blue_escape}| ${open_green_escape}   	.bashrc		   	            ${open_blue_escape}|"
#echo -e "${open_blue_escape}+--------------------------------------------"

#Docker
# eval "$(docker-machine env dev)"

# export DOCKER_TLS_VERIFY=1
# export DOCKER_HOST=tcp://192.168.59.105:2376
# export DOCKER_CERT_PATH=/Users/rbrennan/.boot2docker/certs/boot2docker-vm


open_red_escape="\033[31m"
open_blue_escape="\033[34m"
open_green_escape="\033[32m"
close_escape="^\033[0m"

alias ll="ls -alh"

#echo -e "${open_blue_escape}+--------------------------------------------"
#echo -e "${open_blue_escape}| ${open_green_escape}       .bashc"
#echo -e "${open_blue_escape}+--------------------------------------------"


alias config='/usr/bin/git --git-dir=/Users/rbrennan/.cfg/ --work-tree=/Users/rbrennan'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/rbrennan/.sdkman"
[[ -s "/Users/rbrennan/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/rbrennan/.sdkman/bin/sdkman-init.sh"


source ~/.aliases.zsh
# source "$HOME/.aliases.zsh"


# Docker
function dm-env() {
  eval "$(docker-machine env "${1:-default}")"
}
function docker-clean() {
  docker rmi -f $(docker images -q -a -f dangling=true)
}
alias de="env | grep DOCKER_"
alias dm-list="docker-machine ls"





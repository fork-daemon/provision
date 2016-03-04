#!/bin/bash



# TODO :
# + utilities
# + git
# + git alias
# + bash alias
# + beanstalk
# + supervisor
# + redis
# + memcached
# - apache
# - elasticsearch
# - mongo
# - mysql
# - nginx
# - nodejs
# - rebbitmq
# - sqlite
# - zeromq

# README:
# - http://centminmod.com/


#
# Global constants
#
CONST_ROOT="/home/vagrant/"
CONST_USER="user"
CONST_PASSWORD="password"
#
# Global functions 
#
function startIt {
	echo -e " \n---------------------------------------------------------"
	echo -e ">>> ${1}"
	echo -e "---------------------------------------------------------\n "
}


# # ====================================================================
# # ====================================================================
# startIt "install utilities" # ========================================

# apt-get -y update 
# apt-get -y upgrade

# apt-get -y install \
# htop \
# curl \
# wget \
# mc > /dev/null


# # ====================================================================
# # ====================================================================
# startIt "install git" # ==============================================

# apt-get -y install git # install 
# dpkg --configure -a # configure 


# # ====================================================================
# # ====================================================================
# startIt "git alias" # ================================================

# # add aliases
# CONST_TMP_FILE="${CONST_ROOT}.gitconfig" 
# touch $CONST_TMP_FILE && echo '
# [alias]

#     # http://durdn.com/blog/2012/11/22/must-have-git-aliases-advanced-examples/
#     # http://haacked.com/archive/2014/07/28/github-flow-aliases/
#     # http://stackoverflow.com/questions/1057564/pretty-git-branch-graphs

#     ls = log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate
#     ld = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=relative
#     lds = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short

#     lg1 = log --graph --abbrev-commit --decorate --date=relative --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)" --all
#     lg2 = log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n""          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)" --all
#     lg = !"git lg1"
    
#     st = status
#     co = checkout
#     cob = checkout -b
#     ec = config --global -e
#     ecl = config --local -e
#     up = !git pull --rebase --prune $@ && git submodule update --init --recursive
#     cm = !git add -A && git commit -m
#     save = !git add -A && git commit -m "SAVEPOINT"
#     wip = !git add -u && git commit -m "WIP" 
#     undo = reset HEAD~1 --mixed
#     amend = commit -a --amend
#     wipe = !git add -A && git commit -qm "WIPE SAVEPOINT" && git reset HEAD~1 --hard
#     bclean = "!f() { git branch --merged ${1-master} | grep -v " ${1-master}$" | xargs -r git branch -d; }; f"
#     bdone = "!f() { git checkout ${1-master} && git up && git bclean ${1-master}; }; f"
# ' > $CONST_TMP_FILE && cat $CONST_TMP_FILE


# # ====================================================================
# # ====================================================================
# startIt "bash aliases" # =============================================

# CONST_TMP_FILE="${CONST_ROOT}.bash_aliases" 
# touch $CONST_TMP_FILE && echo "
# # system
# 	alias upup='sudo apt-get update && sudo apt-get upgrade'
# 	alias cc='clear'
# 	alias ccc='cd ~/ && clear'

# # file list
# 	alias ll='ls -l -sort --color=auto'
# 	alias lla='ls -la --color=auto'
# 	alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'

# # history
# 	alias hg='history | grep'

# # compress .tar.gz
# 	alias tarc='tar czvf'
# 	# extract .tar.gz
# 	alias tarx='tar xzvf'

# " > $CONST_TMP_FILE && cat $CONST_TMP_FILE


# # ====================================================================
# # ====================================================================
# startIt "install beanstalkd" # =======================================
# # - http://www.guguncube.com/2632/beanstalkd-simple-fast-queue-installation
# apt-get install -y beanstalkd # install


# # ====================================================================
# # ====================================================================
# startIt "install supervisor" # =======================================
# #  - https://www.digitalocean.com/community/tutorials/how-to-install-and-manage-supervisor-on-ubuntu-and-debian-vps
# apt-get -y install supervisor # install
# service supervisor restart # restart


# # ====================================================================
# # ====================================================================
# startIt "install rebbitmq" # =========================================
# - https://gist.github.com/Divi/7469991
# - https://packagecloud.io/rabbitmq/rabbitmq-server/install
# Install
# echo "deb http://www.rabbitmq.com/debian/ testing main" > /etc/apt/sources.list.d/rabbitmq.list
# wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
# apt-key add rabbitmq-signing-key-public.asc
# apt-get install rabbitmq-server -y
# # configure
# service rabbitmq-server restart
# rabbitmq-plugins enable rabbitmq_management
# rabbitmqctl add_user $CONST_USER $CONST_PASSWORD
# rabbitmqctl set_user_tags $CONST_USER administrator
# rabbitmqctl set_permissions -p / $CONST_USER ".*" ".*" ".*"
# rabbitmqctl delete_user guest
# service rabbitmq-server restart
# echo -e " \n ... User: ${CONST_USER} \n ... Password: ${CONST_PASSWORD}"


# # ====================================================================
# # ====================================================================
# startIt "install redis" # ============================================
# # - https://www.digitalocean.com/community/tutorials/how-to-configure-a-redis-cluster-on-ubuntu-14-04
# add-apt-repository ppa:chris-lea/redis-server # accept the repository
# apt-get update > /dev/null
# apt-get install redis-server -y # Install the Redis server
# redis-benchmark -q -n 1000 -c 10 -P 5 # Check that Redis is up and running
# # nano /etc/redis/redis.conf

# sed -i -e 's/abc/XYZ/g' /tmp/file.txt

# service redis-server restart # restart


# # ====================================================================
# # ====================================================================
# startIt "install memcached" # ========================================
# # - http://www.cyberciti.biz/faq/howto-install-memcached-on-ubuntu-linux-1204-1404/

# # install
# sudo apt-get install memcached

# # configure
# CONST_TMP_FILE="/etc/memcached.conf" 
# sed -i 's/-m 64/-m 256/g' $CONST_TMP_FILE # set memory size in MB
# # sed -i 's/-l 127.0.0.1/-l 127.0.0.1/g' $CONST_TMP_FILE  # set ip
# # sed -i 's/-p 11211/-p 11211/g' $CONST_TMP_FILE  # set port

# # actions
# # /etc/init.d/memcached start
# # /etc/init.d/memcached stop
# /etc/init.d/memcached restart
# # /etc/init.d/memcached force-reload
# /etc/init.d/memcached status




# # ====================================================================
# # ====================================================================
# startIt "install sqlite3" # ==========================================
# # - https://iqbalnaved.wordpress.com/2014/07/10/how-to-install-sqlite-3-8-2-on-ubuntu-14-04-and-commands-for-creating-database-and-tables/
# apt-get install sqlite3 libsqlite3-dev


























# ====================================================================
# echo -e " "
# echo -e "-------------------------------------------"
# echo -e "                               _  _		  "
# echo -e "   Do it like                 (_)(_)		  "
# echo -e "       a BOSS                /     \		  "
# echo -e "                            /       |	  "
# echo -e "                           /   \  * |	  "
# echo -e "             ________     /    /\__/		  "
# echo -e "     _      /        \   /    /			  "
# echo -e "    / \    /  ____    \_/    /			  "
# echo -e "   //\ \  /  /    \         /			  "
# echo -e "   V  \ \/  /      \       /               "
# echo -e "       \___/        \_____/                "
# echo -e "										      "
# echo -e "-------------------------------------------"
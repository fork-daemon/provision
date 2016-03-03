#!/bin/bash

# TODO :
# + utilities
# + git
# + beanstalk
# + supervisor
# - apache
# - elasticsearch
# - mongo
# - mysql
# - nginx
# - nodejs
# - rebbitmq
# - redis
# - sqlite
# - zeromq

#
# Global constants
#
CONST_XXX="xxx"
CONST_ROOT="/home/vagrant/"

#
# Global functions 
#
function startIt {
	echo -e " \n---------------------------------------------------------"
	echo -e ">>> ${1}"
	echo -e "---------------------------------------------------------\n "
}


# ====================================================================
# ====================================================================
startIt "install utilities" # ========================================

apt-get -y update 
apt-get -y upgrade

apt-get -y install \
htop \
curl \
wget \
mc > /dev/null


# ====================================================================
# ====================================================================
startIt "install git" # ==============================================

apt-get -y install git # install 
dpkg --configure -a # configure 

# add aliases
CONST_TMP_FILE="${CONST_ROOT}.gitconfig" 
touch CONST_TMP_FILE && echo '
[aliases]
	ld="123"
' > CONST_TMP_FILE && cat CONST_TMP_FILE


# ====================================================================
# ====================================================================
startIt "bash aliases" # =============================================

CONST_TMP_FILE="${CONST_ROOT}.bash_aliases" 
touch CONST_TMP_FILE && echo "
# system update
	alias upup='sudo apt-get update && sudo apt-get upgrade'
	alias cc='clear'
	alias ccc='cd ~/ && clear'

# file list
	alias ll='ls -l -sort --color=auto'
	alias lla='ls -la --color=auto'
	alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'

# history
	alias hg='history | grep'

# compress .tar.gz
	alias tarc='tar czvf'
	# extract .tar.gz
	alias tarx='tar xzvf'

" > CONST_TMP_FILE && cat CONST_TMP_FILE


# ====================================================================
# ====================================================================
startIt "install beanstalkd" # =======================================
# - http://www.guguncube.com/2632/beanstalkd-simple-fast-queue-installation
apt-get install -y beanstalkd # install


# ====================================================================
# ====================================================================
startIt "install supervisor" # =======================================
#  - https://www.digitalocean.com/community/tutorials/how-to-install-and-manage-supervisor-on-ubuntu-and-debian-vps
apt-get -y install supervisor # install
service supervisor restart # restart








# ====================================================================
echo -e " "
echo -e "-------------------------------------------"
echo -e "                               _  _		"
echo -e "   Do it like                 (_)(_)		"
echo -e "       a BOSS                /     \		"
echo -e "                            /       |		"
echo -e "                           /   \  * |		"
echo -e "             ________     /    /\__/		"
echo -e "     _      /        \   /    /			"
echo -e "    / \    /  ____    \_/    /				"
echo -e "   //\ \  /  /    \         /				"
echo -e "   V  \ \/  /      \       /               "
echo -e "       \___/        \_____/                "
echo -e "											"
echo -e "-------------------------------------------"
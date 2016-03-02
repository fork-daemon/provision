#!/bin/bash

##############################
### Git
##############################

SOURCE_GIT_CONFIG="/vagrant/provision/source/dot_gitconfig"
TARGET_GIT_CONFIG="/home/vagrant/.gitconfig"

echo -e "-------------------------------------------"
echo -e ">>> ${0##*/}"

echo "install ..."
apt-get -y install git > /dev/null
echo "reconfigurate ..."
dpkg --configure -a

# git config
echo ">>> ${TARGET_GIT_CONFIG} :"
echo "..........................................."
cp $SOURCE_GIT_CONFIG $TARGET_GIT_CONFIG && cat $TARGET_GIT_CONFIG
echo "..........................................."
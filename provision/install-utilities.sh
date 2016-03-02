#!/bin/bash

##############################
### Utilities
##############################

SOURCE_BASH_ALIASES="/vagrant/provision/source/dot_bash_aliases"
TARGET_BASH_ALIASES="/home/vagrant/.bash_aliases"

echo -e "-------------------------------------------"
echo -e ">>> ${0##*/}"

apt-get -y update 
apt-get -y upgrade

apt-get -y install htop \
curl \
wget \
mc




# bash aliases
echo -e ">>> ${TARGET_BASH_ALIASES} :"
echo "..........................................."
cp $SOURCE_BASH_ALIASES $TARGET_BASH_ALIASES && cat $TARGET_BASH_ALIASES
echo "..........................................."
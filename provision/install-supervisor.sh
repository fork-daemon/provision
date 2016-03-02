#!/bin/bash

##############################
### Supervisor
##############################

echo -e "-------------------------------------------"
echo -e ">>> ${0##*/}"

# install supervisor

echo "install ..."
apt-get -y install supervisor > /dev/null

echo "restart ..."
service supervisor restart > /dev/null

# README #########################################

#  - https://www.digitalocean.com/community/tutorials/how-to-install-and-manage-supervisor-on-ubuntu-and-debian-vps

# touch /usr/local/bin/long.sh
# chmod +x /usr/local/bin/long.sh

# echo "
# #!/bin/bash
# while true
# do 
# 	# Echo current date to stdout
# 	echo `date`
# 	# Echo 'error!' to stderr
# 	echo 'error!' >&2
# 	sleep 1
# done
# " > /usr/local/bin/long.sh


# echo '
# [program:long_script]
# command=/usr/local/bin/long.sh
# autostart=true
# autorestart=true
# stderr_logfile=/var/log/long.err.log
# stdout_logfile=/var/log/long.out.log
# ' > /etc/supervisor/conf.d/long_script.conf

##################################################
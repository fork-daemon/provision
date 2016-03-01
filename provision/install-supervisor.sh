#!/bin/bash

# README:
#  - https://www.digitalocean.com/community/tutorials/how-to-install-and-manage-supervisor-on-ubuntu-and-debian-vps

echo -e "-------------------------------------------"
echo -e "--- install-supervisor.sh -----------------"
echo -e "-------------------------------------------"

apt-get -y install supervisor
service supervisor restart



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
#!/bin/bash

echo -e "-------------------------------------------"
echo -e ">>> ${0##*/}"

cd /vagrant/provision

bash install-utilities.sh
bash install-git.sh
bash install-redis.sh
bash install-supervisor.sh
bash install-beanstalk.sh

# bash install-zeromq.sh
# bash install-apache.sh
# bash install-elasticsearch.sh
# bash install-mongo.sh
# bash install-mysql.sh
# bash install-nginx.sh
# bash install-nodejs.sh
# bash install-rebbitmq.sh
# bash install-sqlite.sh	



echo -e ""
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
echo -e "   V  \ \/  /      \       /   make my     "
echo -e "       \___/        \_____/    provision   "
echo -e "											"
echo -e "-------------------------------------------"
#!/bin/bash

echo -e "-------------------------------------------"
echo -e "--- bootstrap.sh --------------------------"
echo -e "-------------------------------------------"
echo -e ""

cd /vagrant/provision

bash install-utilities.sh
bash install-apache.sh
bash install-supervisor.sh


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
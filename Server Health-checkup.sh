#!/bin/bash
echo " "
echo "java version details---------------------------------"
java --version
echo " "
echo "jenkin service status---------------------------------"
systemctl status jenkins
echo " "
echo "system uptime---------------------------------"
uptime
echo " "
echo "Private IP of your instance---------------------------------"
ip route get 1.1.1.1 | awk '{print $7}' | head -1
echo " "
echo "public ip of instance---------------------------------"
curl -s https://api.ipify.org
echo " "
echo "last command exit status---------------------------------"
echo $?
echo " "
echo "Printing date and time---------------------------------"
TZ="Asia/Kolkata" date +"%Y-%m-%d %H:%M:%S %Z"

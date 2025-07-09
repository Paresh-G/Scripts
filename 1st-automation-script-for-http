#!/bin/bash

#Installing httpd package
sudo yum install -y httpd

#starting httpd service
sudo systemctl start httpd

#Downloading git repo were index.html present
wget -O /var/www/html/index.html https://raw.githubusercontent.com/Paresh-G/HTML/index.html

#Updating packages
sudo yum update -y

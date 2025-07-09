#!/bin/bash

#installing java 17
sudo yum install -y java-17-amazon-corretto.x86_64

#installing git
sudo yum install -y git

#installing jenkin
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install -y jenkins

sudo systemctl enable --now jenkins

#installing maven in /opt folder
sudo wget -P /opt https://dlcdn.apache.org/maven/maven-3/3.9.10/binaries/apache-maven-3.9.10-bin.tar.gz
tar -xvzf /opt/apache-maven-3.9.10-bin.tar.gz -C /opt/

#Configuration of maven and java, 
sudo echo "JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto.x86_64" >> /home/ec2-user/.bash_profile
sudo echo "M2_HOME=/opt/apache-maven-3.9.10" >> /home/ec2-user/.bash_profile
sudo echo "M2=/opt/apache-maven-3.9.10/bin" >> /home/ec2-user/.bash_profile
sed -i 's|PATH=$PATH:$HOME/.local/bin:$HOME/bin|PATH=$PATH:$HOME/.local/bin:$HOME/bin:$JAVA_HOME:$M2_HOME:$M2|' /home/ec2-user/.bash_profile

#Refreshing path
source .bash_profile
source .bash_profile
source .bash_profile

wget -O /home/ec2-user/Server-Health-checkup.sh https://raw.githubusercontent.com/Paresh-G/Scripts/master/Server-Health-checkup.sh

sudo sh /home/ec2-user/Server-Health-checkup.sh


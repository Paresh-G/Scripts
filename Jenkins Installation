#!/bin/bash

# Install Java as a pre-requisites for jenkins installation
sudo yum install -y java-17-amazon-corretto.x86_64

#Install and Configure Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Update all the installed packages
sudo yum -y upgrade

# Install Jenkins
sudo yum install -y jenkins

# Start and enable the Jenkins service
sudo systemctl enable --now jenkins

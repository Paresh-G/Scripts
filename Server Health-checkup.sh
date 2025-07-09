#!/bin/bash
#--------------------- Health Checkup Start-------------------------
touch /home/ec2-user/abc.txt
echo "-------------------------Health Checkup Start-------------------------" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo "-------------------------System uptime-------------------------" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
uptime |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo "-------------------------Current  Time-------------------------" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
TZ="Asia/Kolkata" date +"%Y-%m-%d %H:%M:%S %Z" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo "-------------------------Instance Public-IP-------------------------" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
curl -s https://api.ipify.org |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo "-------------------------Instance Private-IP-------------------------" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
ip route get 1.1.1.1 | awk '{print $7}' | head -1 |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo "-------------------------Java Version-------------------------" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
java --version  |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo "-------------------------Jenkin Service Status-------------------------" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
sudo systemctl status jenkins |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo "-------------------------Jenkin Initial passkey-------------------------" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
sudo cat /var/lib/jenkins/secrets/initialAdminPassword |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo "-------------------------Git Version-------------------------" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
git -v |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo "-------------------------Maven Version-------------------------" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
mvn -v |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo "-------------------------Maven Files-------------------------" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
ls -lrt /opt/ |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo "-------------------------ENV Variable o/p-------------------------" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
cat /home/ec2-user/.bash_profile |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo "-------------------------ENV Variable path-------------------------" |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo $PATH |tee -a /home/ec2-user/abc.txt
echo " " |tee -a /home/ec2-user/abc.txt
echo "-------------------------Health Checkup Start-------------------------" |tee -a /home/ec2-user/abc.txt

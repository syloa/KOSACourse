#!/bin/bash

echo "-----------------------------------------------------------------"
echo "-----------------------------------------------------------------"
echo "-----------------------------------------------------------------"
echo "------------ Team 1 Hera                          ---------------"
echo "--------------------------- install Wordpress     ---------------"
echo "-----------------------------------------------------------------"
echo "-----------------------------------------------------------------"
sleep 3

yum install -y wget

yum install -y git

git clone https://github.com/S2Domingo/KOSAEducation.git

yum install -y httpd php php-mysql php-gd php-mbstring wget unzip 

echo "-----------------------------------------------------------------"
echo "-----------------------------------------------------------------"
echo "-----------------------------------------------------------------"
echo "------------ Team 1 Hera                          ---------------"
echo "--------------------------- install Wordpress     ---------------"
echo "-----------------------------------------------------------------"
echo "-----------------------------------------------------------------"
sleep 3

cd /var/www/html 

wget https://ko.wordpress.org/wordpress-4.8.2-ko_KR.zip 

unzip wordpress-4.8.2-ko_KR.zip

mv wordpress/* . 

chown -R apache:apache /var/www/* 

echo "vi /etc/httpd/conf/httpd.conf Need Modified"

echo "-----------------------------------------------------------------"
echo "-----------------------------------------------------------------"
echo "-----------------------------------------------------------------"
echo "------------ Team 1 Hera                          ---------------"
echo "--------------------------- install Wordpress     ---------------"
echo "-----------------------------------------------------------------"
echo "-----------------------------------------------------------------"

setenforce 0 

systemctl enable --now httpd

firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --reload
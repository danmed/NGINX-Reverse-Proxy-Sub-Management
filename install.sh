#!/bin/bash
apt update -y
apt upgrade -y
apt install nginx -y
cd /etc/nginx/sites-available
wget https://raw.githubusercontent.com/danmed/NGINX-Reverse-Proxy-Sub-Management/master/new
cd
wget https://raw.githubusercontent.com/danmed/NGINX-Reverse-Proxy-Sub-Management/master/deletedomain.sh
wget https://raw.githubusercontent.com/danmed/NGINX-Reverse-Proxy-Sub-Management/master/newdomain.sh
chmod 755 newdomain.sh
chmod 755 deletedomain.sh

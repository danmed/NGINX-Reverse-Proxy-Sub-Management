#!/bin/bash
echo "**************************************************"
echo "**         New NGINX Sub Domain Generator       **"
echo "**************************************************"
echo "Enter name of new subdomain e.g test.domain.com:"
read sub
echo "Enter the internal IP Address of the host:"
read ip
echo "Enter the port number"
read port
cp /etc/nginx/sites-available/new /etc/nginx/sites-available/$sub
sed -i "s/new/$sub/" "/etc/nginx/sites-available/$sub"
sed -i "s/<ipaddress>/$ip/" "/etc/nginx/sites-available/$sub"
sed -i "s/<port>/$port/" "/etc/nginx/sites-available/$sub"
ln -s /etc/nginx/sites-available/$sub /etc/nginx/sites-enabled/$sub
systemctl restart nginx
echo $sub "created and enabled"

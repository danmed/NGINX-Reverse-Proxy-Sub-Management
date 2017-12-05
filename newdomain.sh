#!/bin/bash
echo "Enter name of new subdomain e.g test.danmed.co.uk:"
read sub
echo "Enter the internal IP Address of the host:"
read ip
echo "Enter the port number"
read port
cp /etc/nginx/sites-available/new /etc/nginx/sites-available/$sub.danmed.co.uk
sed -i "s/new/$sub/" "/etc/nginx/sites-available/$sub.danmed.co.uk"
sed -i "s/<ipaddress>/$ip/" "/etc/nginx/sites-available/$sub.danmed.co.uk"
sed -i "s/<port>/$port/" "/etc/nginx/sites-available/$sub.danmed.co.uk"
ln -s /etc/nginx/sites-available/$sub.danmed.co.uk /etc/nginx/sites-enabled/$sub.danmed.co.uk
systemctl restart nginx

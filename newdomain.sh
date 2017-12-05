#!/bin/bash
MYDOMAIN=mydomain.co.uk
echo "**************************************************"
echo "**         New NGINX Sub Domain Generator       **"
echo "**************************************************"
echo "Enter name of new subdomain e.g test.$MYDOMAIN:"
read sub
echo "Enter the internal IP Address of the host:"
read ip
echo "Enter the port number"
read port
cp /etc/nginx/sites-available/new /etc/nginx/sites-available/$sub.$MYDOMAIN
sed -i "s/new/$sub.$MYDOMAIN/" "/etc/nginx/sites-available/$sub.$MYDOMAIN"
sed -i "s/<ipaddress>/$ip/" "/etc/nginx/sites-available/$sub.$MYDOMAIN"
sed -i "s/<port>/$port/" "/etc/nginx/sites-available/$sub.$MYDOMAIN"
ln -s /etc/nginx/sites-available/$sub.$MYDOMAIN /etc/nginx/sites-enabled/$sub.$MYDOMAIN
systemctl restart nginx
echo $sub"."$MYDOMAIN "created and enabled"

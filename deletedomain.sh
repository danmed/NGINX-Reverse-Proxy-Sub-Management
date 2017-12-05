#!/bin/bash
echo "**************************************************"
echo "**           Delete NGINX Sub Domain            **"
echo "**************************************************"
echo "Enter name of subdomain e.g test:"
read sub
rm /etc/nginx/sites-available/$sub.MYDOMAIN.co.uk
rm /etc/nginx/sites-enabled/$sub.MYDOMAIN.co.uk
systemctl restart nginx
echo $sub".danmed.co.uk removed from config"

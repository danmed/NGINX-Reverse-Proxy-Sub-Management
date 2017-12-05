#!/bin/bash
MYDOMAIN=mydomain.co.uk
echo "**************************************************"
echo "**           Delete NGINX Sub Domain            **"
echo "**************************************************"
echo "Enter name of subdomain e.g test:"
read sub
rm /etc/nginx/sites-available/$sub.MYDOMAIN
rm /etc/nginx/sites-enabled/$sub.MYDOMAIN
systemctl restart nginx
echo $sub"."$MYDOMAIN" removed from config"

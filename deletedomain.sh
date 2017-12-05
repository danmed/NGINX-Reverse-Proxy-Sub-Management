#!/bin/bash
echo "**************************************************"
echo "**           Delete NGINX Sub Domain            **"
echo "**************************************************"
echo "Enter name of subdomain e.g test.domain.com:"
read sub
if [ -e /etc/sites-available/$sub ]
then
        rm /etc/nginx/sites-available/$sub
        rm /etc/nginx/sites-enabled/$sub
        systemctl restart nginx
        echo $sub" removed from config"
else
        echo $sub" does not exist! Quitting."
fi


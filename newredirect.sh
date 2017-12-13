#!/bin/bash
echo "**************************************************"
echo "**    New NGINX Sub Domain Redirect Generator   **"
echo "**************************************************"
echo "Enter name of new subdomain e.g test.domain.com:"
read sub
if [ -e /etc/nginx/sites-available/$sub ]
then
        echo $sub "already exists! Quitting."
        exit
else
        echo "Enter the external Address of the host:"
        read url
        cp /etc/nginx/sites-available/new_redirect /etc/nginx/sites-available/$sub
        sed -i "s/NEW/$sub/" "/etc/nginx/sites-available/$sub"
        sed -i "s/URL/$url/" "/etc/nginx/sites-available/$sub"
        ln -s /etc/nginx/sites-available/$sub /etc/nginx/sites-enabled/$sub
        systemctl restart nginx
        echo $sub "created and enabled"
fi

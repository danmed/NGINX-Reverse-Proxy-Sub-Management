# NGINX-Reverse-Proxy-Sub-Management

2 simple scripts to add or delete a sub domain from an NGINX Reverse Proxy.

NOTE : THIS ONLY DOES SIMPLE HTTP (port 80) 

# CONFIG
```bash
cd /etc/nginx/sites-available
wget https://raw.githubusercontent.com/danmed/NGINX-Reverse-Proxy-Sub-Management/master/new
wget https://raw.githubusercontent.com/danmed/NGINX-Reverse-Proxy-Sub-Management/master/new_redirect
cd
wget https://raw.githubusercontent.com/danmed/NGINX-Reverse-Proxy-Sub-Management/master/deletedomain.sh
wget https://raw.githubusercontent.com/danmed/NGINX-Reverse-Proxy-Sub-Management/master/newdomain.sh
wget https://raw.githubusercontent.com/danmed/NGINX-Reverse-Proxy-Sub-Management/master/newredirect.sh
chmod 755 newdomain.sh
chmod 755 deletedomain.sh
chmod 755 newredirect.sh
```

# USAGE

./newdomain.sh - create a new sub domain to point to an internal service

./deletedomain.sh - delete a sub domain entry

./newredirect.sh - set up a sub domain to redirect to another URL

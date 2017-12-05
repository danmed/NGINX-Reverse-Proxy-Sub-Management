# NGINX-Reverse-Proxy-Sub-Management

2 simple scripts to add or delete a sub domain from an NGINX Reverse Proxy.

NOTE : THIS ONLY DOES SIMPLE HTTP (port 80) 

# CONFIG
```bash
cd /etc/nginx/sites-available
wget https://raw.githubusercontent.com/danmed/NGINX-Reverse-Proxy-Sub-Management/master/new
cd
wget https://raw.githubusercontent.com/danmed/NGINX-Reverse-Proxy-Sub-Management/master/deletedomain.sh
wget https://raw.githubusercontent.com/danmed/NGINX-Reverse-Proxy-Sub-Management/master/newdomain.sh
chmod 755 newdomain.sh
chmod 755 deletedomain.sh
```
# USAGE

./newdomain.sh

./deletedomain.sh

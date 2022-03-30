#!/bin/bash

echo "Running script..."

# Install squid 
apt-get update -y
apt-get install -y squid-common squid-openssl squidclient libecap3 libecap3-dev

cd /etc/squid

# Generate ssl-cert / Needed only if running with self-signed certificate
#openssl req -new -newkey rsa:2048 -days 30 -nodes -x509 -keyout bump.key -out bump.crt
#openssl x509 -in bump.crt -outform DER -out bump.der
#openssl dhparam -outform PEM -out /etc/squid/bump_dhparam.pem 2048
#chown proxy:proxy /etc/squid/bump*
#chmod 400 /etc/squid/bump*

#mkdir -p /var/lib/squid
#rm -rf /var/lib/squid/ssl_db
#/usr/lib/squid/security_file_certgen -c -s /var/lib/squid/ssl_db -M 20MB
#chown -R proxy:proxy /var/lib/squid

# Generate ssl-cert using letsencrypt

apt-get install -y certbot
apt-get install -y python3-certbot-apache
# Run the bellow command enter the email and domain name
certbot --apache

rm -rf squid.conf
echo "Copy squid.conf and start squid service."

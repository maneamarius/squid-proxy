#!/bin/bash

# Install apache2 for auth
apt-get install -y apache2-utils

touch /etc/squid/passwords
chmod 777 /etc/squid/passwords
htpasswd -b /etc/squid/passwords $1 $2

# Verify password /usr/lib/squid/basic_ncsa_auth /etc/squid/passwords

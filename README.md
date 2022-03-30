# squid-proxy

## Steps to install and configure:

1. Copy from repo to remote machine:
  `scp script.sh gen-usr-psw.sh root@104.131.12.246:/root`
2. Run script.sh.
3. Run gen-usr-psw.sh with user and password given as arguments to set up authentication:
  `bash ./gen-usr-psw username password`
4. Copy squid.conf to /etc/squid.
5. Restart squid service.
6. Test on local machine:
  `export HTTP_PROXY=http://username:password@cache.netdata.cloud:8888 
   export HTTPS_PROXY=http://username:password@cache.netdata.cloud:8888`

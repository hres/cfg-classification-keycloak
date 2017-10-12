# How to setup Keycloak HTTPS #

## How to configure Apache ##

Find the file 000-default.conf.  In the xml node <VirtualHost *:80> add the following entry:

Redirect / https://your-host-name-or-ip-here/

Execute:

sudo a2enmod ssl

Find the file default-ssl.conf.  Configure the entries for SSLCertificateFile and SSLCertificateKeyFile

e.g.  Place your certificate and key files in /etc/apache2/ssl/

Restart apache.

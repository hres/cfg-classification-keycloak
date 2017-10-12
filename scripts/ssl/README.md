# How to setup Keycloak HTTPS #

## How to configure Apache ##

Find the file 000-default.conf.  In the xml node <VirtualHost *:80> add the following entry:

Redirect / https://your-host-name-or-ip-here/

Execute:

sudo a2enmod ssl

Find the file default-ssl.conf.  Configure the entries for SSLCertificateFile and SSLCertificateKeyFile

e.g.  Place your certificate and key files in /etc/apache2/ssl/

sudo a2ensite default-ssl

sudo service apache2 reload

## How to configure Tomcat for https ##

1. Find tomcat's server.xml file.  Uncomment the <Connector> node for port 8443
 2. Add a keystoreFile, keystorePass and keyAlias attribute.  Final node entry should like something like the below:
  
  ```xml
<Connector port="8443" protocol="org.apache.coyote.http11.Http11NioProtocol"
                maxThreads="150" SSLEnabled="true" scheme="https" secure="true"
                keystoreFile="/opt/tomcat/conf/ssl/tomcat.keystore"
                keystorePass="password"
                clientAuth="false"
                keyAlias="tomcat"
                SSLProtocol="TLS" />
```

# How to setup Keycloak HTTPS #

## How to configure Apache ##

1. Find the file 000-default.conf.  In the xml node <VirtualHost *:80> add the following entry:

Redirect / https://your-host-name-or-ip-here/

2. Execute:
```
sudo a2enmod ssl
```
3. Find the file default-ssl.conf.  Configure the entries for SSLCertificateFile and SSLCertificateKeyFile

e.g.  Place your certificate and key files in /etc/apache2/ssl/

4. Excecute:

```
sudo a2ensite default-ssl
sudo service apache2 reload
```
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
3. To setup the keystore and build/import the required certificates, execute the scripts in the [Tomcat](http://github.com/hres/cfg-classification-keycloak/tree/master/scripts/ssl/tomcat) folder.  Before beginning verify all parameters within each.

## How to configure Keycloak for https ##

1. In the Keycloak configuration folder, remove the application.keystore file.
2. To setup the keystore and build/import the required certificates, execute the scripts in the [Keycloak](http://github.com/hres/cfg-classification-keycloak/tree/master/scripts/ssl/keycloak) folder.  Before beginning verify all parameters within each.
3. Find the file configuration/standalone.xml and verify that the ApplicationRealm node looks something like the below.  In particular verify that the alias property is set to "keycloak".

```xml
<security-realm name="ApplicationRealm">
                <server-identities>
                    <ssl>
                        <keystore path="application.keystore" relative-to="jboss.server.config.dir"
                                  keystore-password="password" alias="keycloak" key-password="password"
                                  generate-self-signed-certificate-host="localhost"
                        />
                    </ssl>
```


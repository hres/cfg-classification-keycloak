sudo openssl pkcs12 -export -in keycloak.crt -inkey keycloak.pem -name keycloak -out keycloak.p12
sudo keytool -importkeystore -deststorepass password -destkeystore ../tomcat.keystore -srckeystore keycloak.p12 -srcstoretype PKCS12

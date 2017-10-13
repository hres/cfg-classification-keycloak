sudo keytool -importkeystore -srckeystore application.keystore -destkeystore keystore.p12 -deststoretype PKCS12
openssl pkcs12 -in keystore.p12 -nodes -nocerts -out keycloak.pem

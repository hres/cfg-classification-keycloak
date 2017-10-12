Please verify all file content before executing.  Correct file locations, names or ip addresses before starting.  The order of execution is:

1. create-keystore.sh
2. create-tomcat-csr.sh
3. create-tomcat-cert.sh (this is done by the Certificate Authority)
4. import-CA.sh  (this requires the root CA a .pem file)
5. import-tomcat-cert.sh
6. import-keycloak-certkey.sh  (this requires keycloak.crt and keycloak.pem)

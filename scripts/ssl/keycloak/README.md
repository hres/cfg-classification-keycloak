Please verify all file contents before starting (name, ip address, file locations, etc...)  The order of execution is the following:

1. createKeystore.sh
2. createKeycloakCSR.sh
3. import-LucCA.sh  (requires root CA .pem file)
4. import-keycloak-cert.sh  (requires keycloak.crt file)
5. export-keycloak-key.sh  (creates keystore.p12 file)
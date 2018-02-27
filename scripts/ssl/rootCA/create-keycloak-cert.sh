#!/usr/bin/env bash
openssl x509 -req -in keycloak.csr -CA cfg-food-modernization-CA.pem -CAkey cfg-food-modernization-CA.key -CAcreateserial -out keycloak.crt -days 500 -sha256 -extfile keycloak.ext

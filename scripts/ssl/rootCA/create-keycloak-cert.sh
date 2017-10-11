#!/usr/bin/env bash
openssl x509 -req -in keycloak.csr -CA luc-bertrand-CA.pem -CAkey luc-bertrand-CA.key -CAcreateserial -out keycloak.crt -days 500 -sha256 -extfile keycloak.ext

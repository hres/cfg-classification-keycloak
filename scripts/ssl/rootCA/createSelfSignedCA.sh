#!/usr/bin/env bash
openssl genrsa -des3 -out cfg-food-modernization-CA.key 2048
openssl req -x509 -new -nodes -key cfg-food-modernization-CA.key -sha256 -days 1825 -out cfg-food-modernization-CA.pem

#!/usr/bin/env bash
openssl genrsa -des3 -out ./luc-bertrand-CA.key 2048
openssl req -x509 -new -nodes -key luc-bertrand-CA.key -sha256 -days 1825 -out luc-bertrand-CA.pem

openssl x509 -req -in apache.csr -CA luc-bertrand-CA.pem -CAkey luc-bertrand-CA.key -CAcreateserial -out apache.crt -days 500 -sha256 -extfile apache.ext

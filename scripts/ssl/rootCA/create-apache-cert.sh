openssl x509 -req -in apache.csr -CA cfg-food-modernization-CA.pem -CAkey cfg-food-modernization-CA.key -CAcreateserial -out apache.crt -days 500 -sha256 -extfile apache.ext

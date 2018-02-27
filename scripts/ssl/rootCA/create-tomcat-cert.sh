openssl x509 -req -in tomcat.csr -CA cfg-food-modernization-CA.pem -CAkey cfg-food-modernization-CA.key -CAcreateserial -out tomcat.crt -days 500 -sha256 -extfile tomcat.ext

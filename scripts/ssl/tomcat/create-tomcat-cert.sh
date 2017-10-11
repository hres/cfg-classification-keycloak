openssl x509 -req -in tomcat.csr -CA luc-bertrand-CA.pem -CAkey luc-bertrand-CA.key -CAcreateserial -out tomcat.crt -days 500 -sha256 -extfile tomcat.ext

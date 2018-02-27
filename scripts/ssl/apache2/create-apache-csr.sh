sudo openssl req -new -newkey rsa:2048 -nodes -keyout apache.key -out apache.csr -subj "/C=CA/ST=Ontario/L=Ottawa/O=Health Canada/OU=IMSD/CN=lam-dev.canadaeast.cloudapp.azure.com"

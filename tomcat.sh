#!/bin/bash
sudo apt update
sudo apt install java -y
wget -O /tmp/tomcat.gz https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.60/bin/apache-tomcat-9.0.60.tar.gz --no-check-certificate
tar -xvzf /tmp/tomcat.gz
cd tmp
mv apache-tomcat-9.0.60 tomcat

cd tomcat/bin

bash startup.sh

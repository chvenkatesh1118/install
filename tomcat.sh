#!/bin/bash
sudo apt update
sudo apt install default-jdk
wget -O /tmp/tomcat.tar.gz https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.60/bin/apache-tomcat-9.0.60.tar.gz --no-check-certificate
tar -xvzf /tmp/tomcat.tar.gz
mv /tmp/apache-tomcat-9.0.60 /tmp/tomcat
cd tomcat
cd bin
bash startup.sh

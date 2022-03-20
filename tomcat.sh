#!/bin/bash
sudo apt update
sudo yum install java -y
wget -O /tmp/tomcat.gz https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.60/bin/apache-tomcat-9.0.60.tar.gz --no-check-certificate
tar -xvzf /tmp/tomcat.gz

mv apache-tomcat-9.0.60 /opt/tomcat

cd /opt/tomcat/bin

bash startup.sh

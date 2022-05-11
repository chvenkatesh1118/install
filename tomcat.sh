#!/bin/bash
sudo yum update -y
sudo yum install java -y
wget -O /tmp/tomcat.tar.gz https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.tar.gz
tar -xvzf /tmp/tomcat.tar.gz

mv apache-tomcat-9.0.62 /opt/tomcat

cd /opt/tomcat/bin

bash startup.sh

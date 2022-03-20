#!/bin/bash
sudo apt update
sudo apt install default-jdk
wget -O /tmp/tomcat https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.60/bin/apache-tomcat-9.0.60.tar.gz --no-check-certificate
tar -xvzf /tmp/tomcat
cd /tmp

cd tomcat/bin

bash startup.sh

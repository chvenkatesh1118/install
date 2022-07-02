#!/bin/bash
sudo yum update -y
sudo yum install java -y
rm  artifactory-oss-6.9.6
wget https://jfrog.bintray.com/artifactory/jfrog-artifactory-oss-6.9.6.zip

unzip jfrog-artifactory-oss-6.9.6.zip
cd artifactory-oss-6.9.6
cd bin
bash artifactory.sh
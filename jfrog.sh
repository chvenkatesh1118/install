#!/bin/bash
sudo yum update -y
sudo yum install java -y
rm  artifactory-oss-6.9.6
wget https://jfrog.bintray.com/artifactory/jfrog-artifactory-oss-6.9.6.zip

unzip jfrog-artifactory-oss-6.9.6.zip 
cd artifactory-oss-6.9.6
cd bin
bash artifactory.sh


##########################################
ubuntu
######################################
# To determine your distribution, run lsb_release -c or cat /etc/os-release
# Example:echo "deb https://releases.jfrog.io/artifactory/artifactory-pro-debs xenial main" | sudo tee -a /etc/apt/sources.list;
wget -qO - https://releases.jfrog.io/artifactory/api/gpg/key/public | sudo apt-key add -;
echo "deb https://releases.jfrog.io/artifactory/artifactory-debs {distribution} main" | sudo tee -a /etc/apt/sources.list;
sudo apt-get update && sudo apt-get install jfrog-artifactory-oss
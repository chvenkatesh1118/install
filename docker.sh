echo Install the yum-utils package (which provides the yum-config-manager utility) and set up the stable repository.
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo


echo These repositories are included in the docker.repo file above but are disabled by default. You can enable them alongside the stable repository. The following command enables the nightly repository
    sudo yum-config-manager --enable docker-ce-nightly


echo To enable the test channel, run the following command:
 sudo yum-config-manager --enable docker-ce-test

echo You can disable the nightly or test repository by running the yum-config-manager command with the --disable flag. To re-enable it, use the --enable flag. The following command disables the nightly repository.
sudo yum-config-manager --disable docker-ce-nightly

echo Install Docker Engine
echo Install the latest version of Docker Engine and containerd, or go to the next step to install a specific version:
sudo yum install docker-ce docker-ce-cli containerd.io
sudo yum install docker-ce-<VERSION_STRING> docker-ce-cli-<VERSION_STRING> containerd.io
sudo systemctl start docker
sudo docker --version

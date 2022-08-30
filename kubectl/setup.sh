rm -rf kubectl
curl -o kubectl https://chantich1.s3.amazonaws.com/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin
kubectl version --short --client
rm -rf eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version

eksctl create cluster --name chanti-cluster  \
--region  ap-south-1 \
--node-type t2.micro \
--nodes-min 1 \
--nodes-max 1 \

#kubectl get nodes
#kubectl run pod tomcat --image=tomcat

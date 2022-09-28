#!/bin/bash
# Program:
#       This scipt is used for k8s install.
# History:
# 2022/09/28	H.Y Chen    First release

# Install docker and enable it.
sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker

# Allow apt install a repository over HTTPS
sudo apt install -y apt-transport-https curl

# Download key
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add

# Add k8s repo
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

# Install k8s 
sudo apt install -y kubelet kubeadm kubectl

# Turn off swap space
sudo swapoff -a

# Install Another stuff...
sudo apt install net-tools vim openssh-server

echo " "
echo "k8s install ok"
exit 0

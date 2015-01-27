#!/bin/bash

sudo apt-get install make git build-essential

# Instalamos etcd

curl -L  https://github.com/coreos/etcd/releases/download/v0.4.6/etcd-v0.4.6-linux-amd64.tar.gz -o etcd-v0.4.6-linux-amd64.tar.gz

tar xzvf etcd-v0.4.6-linux-amd64.tar.gz

cd etcd-v0.4.6-linux-amd64

./etcd&

echo

# Instalamos Kubernetes y creamos la release

git clone https://github.com/GoogleCloudPlatform/kubernetes.git

cd kubernetes

sudo make release

export KUBERNETES_PROVIDER=vagrant

cluster/kube-up.sh



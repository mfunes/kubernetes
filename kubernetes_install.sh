#!/bin/bash

# Instalamos etcd

curl -L  https://github.com/coreos/etcd/releases/download/v0.4.6/etcd-v0.4.6-li$

tar xzvf etcd-v0.4.6-linux-amd64.tar.gz

cd etcd-v0.4.6-linux-amd64

./etcd

# Instalamos Kubernetes y creamos la release

git clone https://github.com/GoogleCloudPlatform/kubernetes.git

cd kubernetes

sudo make release

export KUBERNETES_PROVIDER=vagrant

cluster/kube-up.sh

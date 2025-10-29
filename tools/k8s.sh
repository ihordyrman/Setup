#!/bin/bash

# kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl

# minikube
curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

# k9s
LATEST_VERSION=$(curl -s https://api.github.com/repos/derailed/k9s/releases/latest | grep '"tag_name"' | cut -d'"' -f4)
curl -L https://github.com/derailed/k9s/releases/download/${LATEST_VERSION}/k9s_linux_amd64.deb -o k9s_linux_amd64.deb
sudo dpkg -i k9s_linux_amd64.deb && rm k9s_linux_amd64.deb
OUT="${XDG_CONFIG_HOME:-$HOME/.config}/k9s/skins"
mkdir -p $OUT
curl -L https://github.com/catppuccin/k9s/archive/main.tar.gz | tar xz -C "$OUT" --strip-components=2 k9s-main/dist
awk '/^  ui:/ {print; print "    skin: catppuccin-latte-transparent"; next}1' ~/.config/k9s/config.yaml > /tmp/config.yaml.tmp && mv /tmp/config.yaml.tmp ~/.config/k9s/config.yaml

# helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh && rm get_helm.sh

# start minikube
minikube config set rootless true
minikube start --driver=podman
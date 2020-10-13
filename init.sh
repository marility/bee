#!/bin/bash
set -xeu -o pipefail

yum install -y -q yum-utils iptables git vim
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y -q docker-ce
curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

systemctl enable --now docker

mkdir -p ~/{geth,nucypher}

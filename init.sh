#!/bin/bash
set -xeu -o pipefail

echo "DefaultLimitNOFILE=65535" >> /etc/systemd/system.conf
sed -i 's/^SELINUX=.*/SELINUX=disabled/' /etc/selinux/config
setenforce 0
sed -i 's/authtok_type= enforce_for_root//' /etc/pam.d/system-auth

yum erase -y buildah podman
yum install -y -q yum-utils iptables git vim epel-release wget jq
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y -q docker-ce
curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

systemctl enable --now docker

git clone https://github.com/marility/bee-scripts

wget -O /usr/local/bin/cashout.sh https://gist.githubusercontent.com/ralph-pichler/3b5ccd7a5c5cd0500e6428752b37e975/raw/7ba05095e0836735f4a648aefe52c584e18e065f/cashout.sh

chmod a+x /usr/local/bin/cashout.sh
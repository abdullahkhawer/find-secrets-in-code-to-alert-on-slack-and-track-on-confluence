#!/bin/bash

# update package lists
apt-get update

# install git jq pip python3 make wget
apt install -y git jq python3-pip python3 make wget
git --version && jq --version && make --version && wget --version

# upgrade pip
pip3 install --upgrade pip
pip --version && python3 --version

# install Atlassian library for python3
pip install atlassian-python-api

# install golang
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

# install gitleaks
rm -rf /usr/local/gitleaks && git clone https://github.com/gitleaks/gitleaks.git /usr/local/gitleaks
cd /usr/local/gitleaks
git checkout $GITLEAKS_VERSION
make build
export PATH=$PATH:/usr/local/gitleaks
gitleaks version

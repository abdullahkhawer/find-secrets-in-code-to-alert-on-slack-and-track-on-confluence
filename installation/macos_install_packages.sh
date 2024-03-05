#!/bin/bash

# install Git, jq, pip, Python3, Gitleaks
brew install git jq python python@3 gitleaks
git --version && jq --version && gitleaks version

# upgrade pip
pip install --upgrade pip
pip --version && python3 --version

# install Atlassian Python3 library
pip install atlassian-python-api

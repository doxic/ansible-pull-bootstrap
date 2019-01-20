#!/bin/bash

# Install git
[ -x "$(command -v apt-get)" ] && apt-get update && apt-get install -y git python-pip
[ -x "$(command -v yum)" ] && yum makecache fast && yum install -y git python-pip

# Install pip and ansible
pip install ansible

# Run ansible-pull
/usr/bin/ansible-pull -U https://github.com/doxic/ansible-pull-bootstrap

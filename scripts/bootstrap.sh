#!/bin/bash

echo "Provisioning virtual machine..."

dpkg -s nodejs > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "nodejs is already installed"
else
    echo "Install nodejs LTS"
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - > /dev/null 2>&1
    sleep 30
    apt-get install -y nodejs > /dev/null 2>&1
fi

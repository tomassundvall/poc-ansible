#!/bin/bash
ssh-keygen -t ed25519 -f /home/vagrant/.ssh/controller -N ""  
cp /home/vagrant/.ssh/controller.pub /vagrant/
echo "vagrant" >> ~/vpass
sshpass -f ~/vpass ssh-copy-id -f -i /vagrant/controller.pub vagrant@172.20.20.10

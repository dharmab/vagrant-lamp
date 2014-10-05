#!/bin/bash

yum -y install http://fedora.mirrors.pair.com/epel/6/i386/epel-release-6-8.noarch.rpm
yum -y install ansible

echo "Running Ansible playbook, please be patient..."
ansible-playbook -c local -i /ansible/inventory /ansible/site.yml
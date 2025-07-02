#!/bin/bash

component=$1
dnf install ansible -y 
ansible-pull -U https://github.com/Siva3150/ansible-roboshop-roles-84s -e component=$1 main.yaml
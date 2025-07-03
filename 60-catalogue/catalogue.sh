#!/bin/bash

component=$1
dnf install ansible -y 
ansible-pull -U https://github.com/Siva3150/ansible-roboshop-roles-tf-84s.git -e component=$1 -e env=$2 main.yaml
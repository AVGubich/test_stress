#!/bin/bash

dnf update && dnf upgrade -y
dnf install docker -y
systemctl start docker


git clone https://github.com/AVGubich/test_stress.git
cd /root/test_stress/

for (( i=1; i <= 10; i++ ))
do
docker build . &&
done
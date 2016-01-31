#!/bin/bash

uname -r
curl -sSL https://get.docker.com/ | sh
service docker start
chkconfig docker on

cp /vagrant/Dockerfile .
docker build -t sipxecs .

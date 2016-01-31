#!/bin/bash

uname -r
curl -sSL https://get.docker.com/ | sh
service docker start
chkconfig docker on

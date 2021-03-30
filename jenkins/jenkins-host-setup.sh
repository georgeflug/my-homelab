#!/bin/bash

# read docker group id on host
cat /etc/group | grep docker

# on jenkins container...
# ...add group with same group id as host
# ...and add jenkins user to group
groupadd -g 129 docker
usermod -a -G docker jenkins

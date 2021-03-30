#!/bin/bash

sudo useradd -u 4000 git
sudo mkdir -p /data/gitea/data /data/gitea/config
sudo chown -R git:git /data/gitea

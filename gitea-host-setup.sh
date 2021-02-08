#!/bin/bash

sudo useradd git
sudo mkdir -p /data/gitea/data /data/gitea/config
sudo chown -R git:git /data/gitea

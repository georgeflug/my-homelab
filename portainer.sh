#!/bin/bash

docker run -d \
  --name=portainer \
  --restart=always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /data/portainer:/data \
  --label="traefik.http.routers.portainer.rule=Host(\`portainer.homelab.local\`)" \
  --label="traefik.http.services.portainer.loadbalancer.server.port=9000" \
  --network=homelab-net \
  portainer/portainer-ce

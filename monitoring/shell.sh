#!/bin/bash

docker service create --name cadvisor \
    -l prometheus-job=cadvisor     \
    --mode=global \
    --publish mode=host,target=8080,published=18080 \
    --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock,ro     \
    --mount type=bind,src=/,dst=/rootfs,ro     \
    --mount type=bind,src=/var/run,dst=/var/run     \
    --mount type=bind,src=/sys,dst=/sys,ro     \
    --mount type=bind,src=/var/lib/docker,dst=/var/lib/docker,ro \
    google/cadvisor \
    -docker_only


docker \
  service create --name node-exporter \
  --publish mode=host,target=9100,published=9100 \
  --mode global \
  --mount type=bind,source=/proc,target=/host/proc \
  --mount type=bind,source=/sys,target=/host/sys \
  --mount type=bind,source=/,target=/rootfs \
  --mount type=bind,source=/etc/hostname,target=/etc/host_hostname \
  -e HOST_HOSTNAME=/etc/host_hostname \
  quay.io/prometheus/node-exporter:latest 
  
  

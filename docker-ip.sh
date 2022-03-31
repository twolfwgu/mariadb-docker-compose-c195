#!/bin/bash

while read -r container_id; do 
  container_ip="$(docker inspect \
      --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' \
      "${container_id}" \
    )"
    echo "${container_id} ${container_ip}"
done <<< "$(docker ps -q)"

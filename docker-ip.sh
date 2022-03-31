#!/bin/bash

while read -r container_id; do 
  container_ip="$(docker inspect \
      --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' \
      "${container_id}" \
    )"
    echo "${container_ip}"
done <<< "$(docker-compose ps -q)"

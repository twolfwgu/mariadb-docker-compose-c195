#!/bin/bash

if [[ "$EUID" != 0 ]]; then
  echo -e "\e[91mMust be run using sudo!\e[39m" >&2
  exit 1
fi

while read -r container_id; do 
  container_ip="$(docker inspect \
      --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' \
      "${container_id}" \
    )"
    echo "${container_id} ${container_ip}"
done <<< "$(docker ps -q)"

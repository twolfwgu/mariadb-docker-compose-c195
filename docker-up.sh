#!/bin/bash

chmod 555 -R ./initdb.d 
docker-compose up -d --force-recreate

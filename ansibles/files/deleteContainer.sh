#!/bin/bash
docker ps -a -q | xargs -r docker stop
docker ps -a -q | xargs -r docker rm
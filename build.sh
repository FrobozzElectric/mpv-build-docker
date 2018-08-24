#!/bin/bash

set -e

sudo docker build -t mpv-build .
sudo docker run --name mpv-build mpv-build
container=$(sudo docker ps -aq --filter "name=mpv-build" | head -n 1)
sudo docker cp ${container}:/mpv-build/mpv/build/mpv .

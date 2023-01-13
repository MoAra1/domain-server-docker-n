#! /bin/bash
# Pulls the latest image and restarts the ice-server with newest image

echo "==== fetching latest docker image for ice-server"
docker pull allibay/enverse-domain-server
echo "==== stopping ice-server"
docker stop iceserver
echo "==== removing old ice-server image"
docker rm iceserver
echo "==== starting ice-server"
./run-ice-server.sh


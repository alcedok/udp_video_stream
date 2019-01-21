#!/bin/sh

## activate commands by running `source local_aliases.sh` in this directory

# build docker image
alias dbuild_base="docker build -t udp-base -f base.Dockerfile . "
alias dbuild_server="docker build -t udp-server -f server/server.Dockerfile . "
alias dbuild_client="docker build -t udp-client -f client/client.Dockerfile . "
alias dbuild_app="dbuild_base&&dbuild_server&&dbuild_client"

# run docker image
alias dup_server="docker run -it --entrypoint=/bin/bash --network=host  --rm --name udp-server -v $(pwd)/server:/server/ udp-server:latest"
alias dup_client="docker run -it --entrypoint=/bin/bash --network=host --rm --name udp-client -v $(pwd)/client:/client/ udp-client:latest"
alias dup_app="dup_server&&dup_client"

# stop and remove running container
alias dstop="docker stop udp-server;docker rm udp-server;docker stop udp-client;docker rm udp-client;"

# list running containers
alias dls="docker ps --filter=\"name=udp-\""

# ssh to running container
alias dssh_server="docker exec -it udp-server  /bin/bash"
alias dssh_client="docker exec -it udp-client  /bin/bash"
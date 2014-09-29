#!/bin/bash

CONTAINERS=$(docker ps -aq)

if [ -n "$CONTAINERS" ]; then
    docker stop $CONTAINERS
    docker rm $CONTAINERS
    echo "Containers have been removed"
else
    echo "There are no built containers"
fi


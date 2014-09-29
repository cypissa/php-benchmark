#!/bin/bash

./stop.sh

docker build -t phpbench/generic ./generic
docker build -t phpbench/generic_54 ./generic_54
docker build -t phpbench/phpmaster ./phpmaster
docker build -t phpbench/php54 ./php54
docker build -t phpbench/php55 ./php55
docker build -t phpbench/php56 ./php56
docker build -t phpbench/hhvm ./hhvm

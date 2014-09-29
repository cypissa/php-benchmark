#!/bin/bash

echo "Run PHP-master"
docker run -i -t phpbench/phpmaster
echo "Run PHP-5.4"
docker run -i -t phpbench/php54
echo "Run PHP-5.5"
docker run -i -t phpbench/php55
echo "Run PHP-5.6"
docker run -i -t phpbench/php56
echo "Run HHVM"
docker run -i -t phpbench/hhvm

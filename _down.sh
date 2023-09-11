#!/bin/bash

cd db_mysql
docker-compose down

cd ../db_redis
docker-compose down

cd ../epusdt
docker-compose down

cd ../nginx
docker-compose down
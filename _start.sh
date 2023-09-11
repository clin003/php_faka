#!/bin/bash

cd db_mysql
docker-compose up -d

cd ../db_redis
docker-compose up -d

cd ../epusdt
docker-compose up -d


cd ..
rm -rf ./nginx/iwww/acg-faka
git clone git@github.com:lizhipay/acg-faka.git ./nginx/iwww/acg-faka
#git clone https://github.com/lizhipay/acg-faka.git ./nginx/iwww/acg-faka

rm -rf ./nginx/iwww/dujiaoka
git clone git@github.com:assimon/dujiaoka.git ./nginx/iwww/dujiaoka
#git clone https://github.com/assimon/dujiaoka.git ./nginx/iwww/dujiaoka

cd ./nginx
docker-compose up -d




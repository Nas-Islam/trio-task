#!/bin/bash

password=root
docker rm -f $(docker ps -qa)
docker rmi -f $(docker images)

# Create docker network
docker network create trio-task2

# Create MySQL container
docker volume create trio-mysql
docker build -t trio-task-mysql db
docker run -d --network trio-task2 --name mysql --mount type=volume,source=triomysql,target=/var/lib/mysql -e MYSQL_ROOT_PASSWORD=$password trio-task-mysql

# Create Flask container
docker build -t trio-task-flask-app flask-app
docker run -d --network trio-task2 --name flask-app -e DATABASE_PASSWORD=$password trio-task-flask-app

# Create NGINX container
docker run -d --network trio-task2 -p 80:80 --mount type=bind,source=$(pwd)/nginx/nginx.conf,target=/etc/nginx/nginx.conf --name nginx nginx:alpine
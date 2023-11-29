#!/bin/bash
git pull
docker exec app3 php artisan config:clear
docker exec app3 php artisan cache:clear
docker exec app3 php artisan view:clear
docker exec app3 php artisan route:clear
docker exec app3 php artisan migrate

docker exec app3 php artisan config:cache
docker exec app3 php artisan route:cache
docker exec app3 php artisan view:cache


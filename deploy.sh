#!/bin/bash
git pull
docker exec app3 php artisan config:clear
docker exec app3 php artisan cache:clear
docker exec app3 php artisan view:clear
docker exec app3 php artisan route:clear
docker exec app3 php artisan migrate

php artisan config:cache
php artisan route:cache
php artisan view:cache


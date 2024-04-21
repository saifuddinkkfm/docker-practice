docker-compose build

docker-compose up

docker ps

docker exec -it laravel-doc-app bash

#for my laptop
winpty docker exec -it laravel-doc-app bash

docker exec -it laravel-doc-app bash
chmod -R 775 /var/www/html/storage
chown -R www-data:www-data /var/www/html/storage


#check php version
php -v

#install laravel 
composer create-project laravel/laravel .
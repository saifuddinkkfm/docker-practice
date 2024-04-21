docker-compose build

docker-compose up

docker ps

#make 
make stop

make up 

winpty docker exec -it laravel-container bash
composer create-project laravel/laravel .

chmod -R 775 /var/www/html/storage
chown -R www-data:www-data /var/www/html/storage

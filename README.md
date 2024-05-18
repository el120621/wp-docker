https://github.com/valeriaelias/docker-wordpress-bedrock/tree/main

docker-compose up

docker-compose up -d --force-recreate --build

1. create .env file
2. edit server_name in nginx.conf
3. docker-compose up -d
4. docker container exec -it *phpcontainerid* composer install
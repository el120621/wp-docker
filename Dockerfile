FROM php:8.2-fpm
RUN apt-get update && apt-get install -y \
		libfreetype-dev \
		libjpeg62-turbo-dev \
		libpng-dev \
	&& docker-php-ext-configure gd --with-freetype --with-jpeg \
	&& docker-php-ext-install mysqli -j$(nproc) gd
WORKDIR /app
COPY ./src /app

# Install dependencies
RUN curl -sL https://getcomposer.org/installer | php -- --install-dir /usr/bin --filename composer


# RUN Manually via docker desktop - php container
# composer create-project roots/bedrock
# Note:
# use: docker-compose up -d --force-recreate --build 
# when Dockerfile has changed.
FROM php:7.4-fpm

# Set working directory
WORKDIR /var/www

RUN apt-get update && \
    apt-get install libzip-dev -y && \
    docker-php-ext-install zip && \
    docker-php-ext-install pdo pdo_mysql bcmath

RUN apt-get update && apt-get install -y wget

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy existing application directory contents
COPY . /var/www
RUN chown -R www-data:www-data /var/www
RUN chmod 777 $(pwd)
RUN composer install
RUN chmod -R 777 storage
RUN chmod -R 775 storage
RUN chmod -R 775 bootstrap
RUN php artisan config:cache
# Expose port 9000 and start php-fpm server
EXPOSE 9000


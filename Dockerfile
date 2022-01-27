FROM php:7-apache
#Install git
EXPOSE 80
# Modules that this needs
RUN apt-get update && apt-get install -y git netcat && apt-get clean -y
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN a2enmod rewrite
# Copy all of the files in

ENV APP_HOME=/var/www/html/py4e

COPY . $APP_HOME

RUN git clone https://github.com/csev/tsugi.git $APP_HOME/tsugi

COPY ./tsugi_dist/config.php $APP_HOME/tsugi/
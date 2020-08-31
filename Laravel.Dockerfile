FROM lsiobase/cloud9:latest

RUN apt-get update
RUN apt-get -y install wget

RUN apt -y install php
RUN apt -y install php-bcmath php-bz2 php-intl php-gd php-mbstring php-mysql php-zip

RUN apt -y install curl php-cli git unzip php-pear php-dev
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN pecl install redis
RUN composer global require laravel/installer


FROM php:7.0-apache

RUN apt-get update
RUN apt-get -y upgrade 
RUN apt-get install -y libsvm-dev
RUN apt-get install zlib1g-dev
#RUN apt-get install git

RUN a2enmod php7
RUN a2enmod rewrite

#install SVM library

#install ZIP

RUN touch /usr/local/etc/php/php.ini \
    && echo "error_log = /var/log/error.log" >> /usr/local/etc/php/php.ini \
    && echo "display_errors = Off" >> /usr/local/etc/php/php.ini

#RUN docker-php-ext-enable svm-0.1.9
#RUN docker-php-ext-enable zip-1.13.2

COPY . /usr/src/svm-0.1.9
WORKDIR /usr/src/svm-0.1.9/svm-0.1.9/svm-0.1.9/

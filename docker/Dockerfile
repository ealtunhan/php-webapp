# PHP ile Apache sunucusu kullanın
FROM php:7.4-apache

# MySQLi eklentisini yükleyin
RUN docker-php-ext-install mysqli

# Uygulama kodunu Apache web dizinine kopyalayın
COPY src/ /var/www/html/

FROM php:7.1.19-apache
#install extension for php 
# required extension
RUN docker-php-ext-install -j$(nproc) pdo
RUN docker-php-ext-install -j$(nproc) pdo_mysql
RUN docker-php-ext-install mysqli 
RUN docker-php-ext-enable mysqli
RUN a2enmod rewrite
RUN a2enmod ssl
#########################################
##### add extension below this line #####
#########################################

#### End additional extention ###########
#########################################
RUN apachectl restart
RUN service apache2 restart
#########################################
#### please run docker-compose build ####
######  after add new extension  ########
#########################################

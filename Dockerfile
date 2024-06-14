# Use the official PHP image as the base image
FROM php:8.1-apache

# Install necessary PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy the current directory contents into the container
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html/

# Expose port 80
EXPOSE 80

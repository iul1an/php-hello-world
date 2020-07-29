FROM php:7.4-fpm-alpine

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Expose port
EXPOSE 9000

# Run as www-data
USER www-data

# COPY src
COPY src/ /var/www/html/

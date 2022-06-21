FROM php:7.4-cli

WORKDIR /usr/src/portfolio

COPY . .

EXPOSE 8080

CMD ["/usr/bin/php", "-S", "0.0.0.0:8080", "-t", "/var/www/html/portfolio"]
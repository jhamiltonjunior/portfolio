FROM alpine

EXPOSE 8080

RUN apt-get install php

CMD ["/usr/bin/php", "-S", "0.0.0.0:8080", "-t", "/var/www/html/portfolio"]
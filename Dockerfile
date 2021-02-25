FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y apache2
RUN rm /var/www/html/*
COPY index.html /var/www/html/
COPY style /var/www/html/style
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80

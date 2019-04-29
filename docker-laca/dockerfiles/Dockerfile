#  simple webserver

FROM centos:latest
LABEL maintainer="admin@linuxacademy.com"

RUN yum install -y httpd
RUN echo "Our Container Website" > /var/www/html/index.html

EXPOSE 80
ENTRYPOINT apachectl -DFOREGROUND

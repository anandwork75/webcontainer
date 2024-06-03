FROM centos

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-*

RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-*

RUN yum install httpd -y

COPY index.html /var/www/html/

EXPOSE 80

#CMD ["httpd", "-D", "FOREGROUND"]

CMD ["httpd"]


FROM centos:latest
RUN yum -y install httpd
COPY /home/ec2-user/index.html /var/www/html/
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80

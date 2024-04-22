FROM docker.io/centos:7
RUN yum install httpd -y
RUN sed -i 's/Listen 80/Listen 8888/' /etc/httpd/conf/httpd.conf
RUN echo "<html><head><style>body{background-color:black;color:lightblue;}</style></head><body><h1>hello from Ram :)</h1> </body></html>" > /var/www/html/abhay
EXPOSE 8888
CMD ["usr/sbin/httpd","-D","FOREGROUND"]

FROM centos:7                                                                          
LABEL Name="Chetan Singh"
LABEL EmailID dummy@gmail.com""
LABEL Mobile="971734256"
RUN  yum install -y httpd \
     zip \
     unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip /var/www/html
WORKDIR /var/www/html
RUN unzip oxer.zip
RUN cp -rvf oxer-html/* .
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

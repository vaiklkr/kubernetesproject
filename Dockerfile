FROM centos:7.9.2009
RUN yum install zip -y && yum install unzip -y && yum install httpd -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page280/multishop.zip /var/www/html/
RUN unzip multishop.zip
RUN rm -rf multishop.zip
RUN mv online-shop-website-template/* .
RUN rm -rf online-shop-website-template
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

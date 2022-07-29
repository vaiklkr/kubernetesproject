FROM centos:7.9.2009
RUN yum install zip -y && yum install unzip -y && yum install httpd -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/zay-shop.zip /var/www/html/
RUN unzip zay-shop.zip
RUN rm -rf zay-shop.zip
RUN mv templatemo_559_zay_shop/* .
RUN rm -rf templatemo_559_zay_shop
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

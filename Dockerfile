FROM  centos
RUN   yum install httpd vim unzip wget -y
ADD   https://www.free-css.com/assets/files/free-css-templates/download/page293/mico.zip /var/www/html
WORKDIR /var/www/html
RUN   unzip mico.zip
RUN   rm -rf mico.zip      
RUN   mv mico-html/* .
RUN   rm -rf mico-html
EXPOSE  80
CMD   ["/usr/sbin/httpd", "-DFOREGROUND"]

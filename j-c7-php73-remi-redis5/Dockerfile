FROM jakala/j-c7:latest
MAINTAINER noc@jakala.com
RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.4.3-x86_64.rpm && rpm -vi filebeat-5.4.3-x86_64.rpm && rm -f filebeat-5.4.3-x86_64.rpm

RUN yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
        yum -y install httpd php73 php73-php-soap.x86_64 php73-php-mbstring.x86_64 php73-php php73-php-pecl-redis5 php73-php-fpm php73-php-gd php73-php-xml php73-php-pdo php73-php-zip php73-php-pgsql php73-php-opcache php73-php-json php73-php-cli \
		yum clean all
	
COPY etc /etc/
COPY DATA/ /DATA/
COPY php73/ /etc/opt/remi/php73/
ADD apachectl.sh /
COPY etc/filebeat/filebeat.yml /etc/filebeat/filebeat.yml 
RUN chmod go-w /etc/filebeat/filebeat.yml 
CMD [ "/apachectl.sh" ]

FROM jakala/j-c7-php73-remi-redis5:latest
MAINTAINER noc@jakala.com
RUN curl -sL https://rpm.nodesource.com/setup_11.x | bash -
RUN yum install -y ant wget php73-php-cli php73-php-soap.x86_64 git nodejs
RUN npm i -g yarn
RUN ln -s /usr/bin/php73 /usr/bin/php
VOLUME /mnt
WORKDIR /mnt
CMD /bin/ant build
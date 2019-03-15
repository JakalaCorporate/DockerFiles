FROM jakala/j-c7-php56:latest
MAINTAINER noc@jakala.com
RUN curl -sL https://rpm.nodesource.com/setup_11.x | bash -
RUN yum install -y ant wget php56-php-cli git nodejs
RUN npm i -g yarn
RUN ln -s /usr/bin/php56 /usr/bin/php
VOLUME /mnt
WORKDIR /mnt
CMD /bin/ant build
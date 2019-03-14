FROM jakala/j-c7-php72:latest
MAINTAINER noc@jakala.com
RUN curl -sL https://rpm.nodesource.com/setup_11.x | bash -
RUN yum install -y ant wget php72u-cli php72u-pecl-memcached git nodejs
RUN npm i -g yarn
VOLUME /mnt
WORKDIR /mnt
CMD /bin/ant build

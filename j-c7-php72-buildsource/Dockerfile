FROM jakala/j-c7-php72:latest
MAINTAINER noc@jakala.com
RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo && rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg
RUN yum install -y ant wget php72u-cli php72u-pecl-memcached git yarn
VOLUME /mnt
WORKDIR /mnt
CMD /bin/ant build

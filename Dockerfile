FROM php:7
MAINTAINER Julian Waller <git@julusian.co.uk>

ADD install-composer.sh /

RUN apt-get update && \
  apt-get install -y git zip unzip && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/lib/apt/cache/*.deb

RUN /install-composer.sh

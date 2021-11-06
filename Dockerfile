FROM ruby:2.7.4-slim

MAINTAINER yk-tanigawa <yk-tanigawa@yk-tanigawa.com>

RUN apt-get update && \
  apt-get -y install libxml2-dev libxslt1-dev libreadline6-dev build-essential zlib1g-dev git locales

# configure locale to UTF8
# https://github.com/jekyll/jekyll/issues/4268
RUN dpkg-reconfigure locales && \
  locale-gen C.UTF-8 && \
  /usr/sbin/update-locale LANG=C.UTF-8

RUN echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && \
  locale-gen

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

WORKDIR /app

# CMD bundle install

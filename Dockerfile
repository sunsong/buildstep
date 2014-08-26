FROM ubuntutrusty
MAINTAINER progrium "progrium@gmail.com"

ADD ./sources.list /etc/apt/sources.list
ADD ./pip.conf /root/.pip/pip.conf

RUN mkdir /build
ADD ./stack/ /build
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive /build/prepare
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean

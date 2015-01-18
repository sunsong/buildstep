FROM progrium/cedarish:cedar14
MAINTAINER Jeff Lindsay <progrium@gmail.com>

ADD ./sources.list /etc/apt/sources.list
ADD ./pip.conf /root/.pip/pip.conf

ADD ./stack/configs/etc-profile /etc/profile

ADD ./builder/ /build
RUN xargs -L 1 /build/install-buildpack /tmp/buildpacks < /build/config/buildpacks.txt

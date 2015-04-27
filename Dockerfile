FROM phusion/baseimage:0.9.16

MAINTAINER Wang Xuerui <idontknw.wang@gmail.com>


ADD . /build

RUN /build/prepare.sh && \
    /build/build.sh && \
    /build/cleanup.sh


CMD ["/sbin/my_init"]

VOLUME /data
# EXPOSE 80


# vim:set ai et ts=4 sw=4 sts=4 fenc=utf-8:
